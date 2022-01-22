/****************************************************************************
  FileName     [ collapsing.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : node collapse ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
// abc
#include "base/abc/abc.h"
#include "base/main/main.h"
#include "base/main/mainInt.h"
#include "misc/util/abc_global.h"

using namespace std;

extern vector<int> LSV_ILPCheck(char * pSop);

/*=== src/base/abci/abcDar.c ==========================================*/
extern "C"
{
    // Abc_Ntk_t_ --> Aig_Man_t (src/base/abci/abcDar.c)
    Aig_Man_t *  Abc_NtkToDar( Abc_Ntk_t * pNtk, int fExors, int fRegisters );

    // procedures to start and stop the ABC framework
    // (should be called before and after the ABC procedures are called)
    void   Abc_Start();
    void   Abc_Stop();

    // procedures to get the ABC framework and execute commands in it
    typedef struct Abc_Frame_t_ Abc_Frame_t;
    Abc_Frame_t * Abc_FrameGetGlobalFrame();

    // used in "sprintf (refer to template in Google drive)" --> execute "command in abc"
    // work like ".script" --> automatically execute all operation
    int    Cmd_CommandExecute( Abc_Frame_t * pAbc, const char * sCommand );
}

Abc_Frame_t * pAbc = 0;

//----------------------------------------------------------------------
//    struct
//----------------------------------------------------------------------
struct vertex {
    bool        new_vertex; // the vertex is new or not
    int         Id;         // only has meaning if new_vertex
    Abc_Obj_t*  Obj;        // only has meaning if !new_vertex
};

struct Sop {
    vertex          o_sop;      // the output of the sop
    vector<vertex>  i_sop;      // fanin of the sop
    char*           func;       // the sop function
};

struct Sop_prime {
    vertex          o_sop;      // the output of the sop
    vector<vertex>  i_sop;      // fanin of the sop
    char            func[100];  // the sop function
};

struct Gate {
    vertex              name;   // node name
    int                 T;      // threshold value
    vector<vertex>      fanin;  // fanin list
    vector<int>         weight; // weight of each fanin
};

//----------------------------------------------------------------------
//    declare new function
//----------------------------------------------------------------------
static int LSV_CommandThreshold(Abc_Frame_t* pAbc, int argc, char** argv);
static Sop_prime LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
static bool LSV_UnateCheck(Sop pSop);
static bool LSV_UnateSplit(Sop pSop, vector<Sop_prime>& new_node);
static void LSV_BinateSplit(Sop pSop, vector<Sop_prime>& new_node, int maxfanin, int& cur_fanin);
static void LSV_Threshold(Abc_Ntk_t* pNtk, int max_fanin);


//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------

void init(Abc_Frame_t* pAbc)
{
  Cmd_CommandAdd(pAbc, "LSV", "threshold_optimize", LSV_CommandThreshold, 0);
}

void destroy(Abc_Frame_t* pAbc) {}

Abc_FrameInitializer_t frame_initializer = { init, destroy };

struct PackageRegistrationManager
{
  PackageRegistrationManager() { Abc_FrameAddInitializer(&frame_initializer); }
} lsvPackageRegistrationManager;


//----------------------------------------------------------------------
//    Type define
//----------------------------------------------------------------------
// Types to hold vector-of-ints (Vi) and vector-of-vector-of-ints (Vvi)
typedef std::vector<int> Vi;
typedef std::vector<Vi> Vvi;

//----------------------------------------------------------------------
//    main function : LSV_UnateCheck
//----------------------------------------------------------------------
bool LSV_UnateCheck(Sop pSop)
{
    int var_num = Abc_SopGetVarNum( pSop.func );
    char * pCube;
    vector<char> phase;
    for (int i = 0; i < var_num; ++i)
    {
        phase.push_back('-');
    }
    Abc_SopForEachCube( pSop.func, var_num, pCube )
    {
        for(int i = 0; i < var_num; ++i)
        {
            if (phase[i] == '-') {phase[i] = pCube[i];}

            else if (phase[i] == '0')
            {
                if (pCube[i] == '1') {return false;}
            }
            else if (phase[i] == '1')
            {
                if (pCube[i] == '0') {return false;}
            }
            else {return false;}
        }
    }
    return true;
}
//----------------------------------------------------------------------
//    main function : LSV_BinateSplit
//----------------------------------------------------------------------
void LSV_BinateSplit(Sop pSop, vector<Sop_prime>& new_node, int maxfanin, int& cur_fanin)
{
    int var_num = Abc_SopGetVarNum( pSop.func );
    int cube_num = Abc_SopGetCubeNum( pSop.func );
    
    // transfer to pSop_prime
    Sop_prime pSop_prime;
    //pSop_prime.o_sop = pSop.o_sop;
    pSop_prime.i_sop = pSop.i_sop;
    for (int i = 0; i < (var_num+3)*cube_num; ++i)
    {
        pSop_prime.func[i] = pSop.func[i];
    }
    // check fanin number
    if (cur_fanin == maxfanin-1)
    {
        new_node.push_back(pSop_prime);
        return;
    }
    
    
    char * pCube; //iterator
    int max_a[2] = {0,0}; //maximum [(i-th variable), (appearance times)]
    int cur_cube = 0; //current oprating cube

    //vector<int> positive[var_num];  //cube with i-th var in positive phase
    //vector<int> negative[var_num];  //cube with i-th var in negative phase
    //char phase[var_num] = {'-'};  //phase of a variable
    //bool conflict[var_num] = {false}; //unate or not
    //int appearance[var_num] = {0};  //appearance times in SOP

    vector< vector<int> > positive;
    vector< vector<int> > negative;
    vector<char> phase;
    vector<bool> conflict;
    vector<int> appearance;
    for(int init = 0; init < var_num; ++init)
    {
        vector<int> empty;
        positive.push_back(empty);
        negative.push_back(empty);
        phase.push_back('-');
        conflict.push_back(false);
        appearance.push_back(0);
    }

    Abc_SopForEachCube( pSop.func, var_num, pCube )
    {
        //iteration over current cube
        for(int i = 0; i < var_num; ++i)
        {
            if (phase[i] == '-')
            {
                phase[i] = pCube[i];
                if (pCube[i] == '0')
                {
                    negative[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else if (pCube[i] == '1')
                {
                    positive[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else {positive[i].push_back(cur_cube);}
            }

            else if (phase[i] == '0')
            {
                if (pCube[i] == '0')
                {
                    negative[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else if (pCube[i] == '1')
                {
                    conflict[i] = true;
                    positive[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else {positive[i].push_back(cur_cube);}
            }

            else if (phase[i] == '1')
            {
                if (pCube[i] == '1')
                {
                    positive[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else if (pCube[i] == '0')
                {
                    conflict[i] = true;
                    negative[i].push_back(cur_cube);
                    appearance[i] = appearance[i] + 1;
                }
                else {positive[i].push_back(cur_cube);}
            }

            //max appear update
            if ((appearance[i] > max_a[1]) && (conflict[i]))
            {
                max_a[0] = i;
                max_a[1] = appearance[i];
            }
        }

        cur_cube = cur_cube + 1;
    }

    //splitting & checking
    int most_oc = max_a[0]; //var appears most frquently
    //char nSop_n[100]; //output func
    //char nSop_p[100]; //output func
    Sop_prime   sop_n, sop_p;
    //sop_n.o_sop = pSop.o_sop;
    //sop_p.o_sop = pSop.o_sop;
    int l = var_num + 3;  //cube length

    //check empty
    vector<int> vn, vp; // care variable list
    vector<bool> dc_n, dc_p;
    for(int v = 0; v<var_num; ++v)
    {
        dc_n.push_back(true);
        dc_p.push_back(true);
    }

    for(int i = 0; i < negative[most_oc].size(); ++i)
    {
        for(int j = 0; j < var_num; ++j)
        {
            if (pSop.func[l*negative[most_oc][i] + j] != '-'){dc_n[j] = false;}
        }
    }
    for(int i = 0; i < positive[most_oc].size(); ++i)
    {
        for(int j = 0; j < var_num; ++j)
        {
            if (pSop.func[l*positive[most_oc][i] + j] != '-'){dc_p[j] = false;}
        }
    }

    for(int i = 0; i < var_num; ++i)
    {
        if(!dc_n[i]){vn.push_back(i);}
        if(!dc_p[i]){vp.push_back(i);}
    }
    
    int ln, lp; // cube length of negative/positive
    ln = vn.size() + 3;
    lp = vp.size() + 3;

    //splitting
    for(int i = 0; i < negative[most_oc].size(); ++i)
    {
        for(int j = 0; j < vn.size(); ++j)
        {
            sop_n.func[ln*i + j] = pSop.func[l*negative[most_oc][i] + vn[j]];
        }
        sop_n.func[ln*i + vn.size()]        =   pSop.func[l*negative[most_oc][i] + var_num];
        sop_n.func[ln*i + vn.size() + 1]    =   pSop.func[l*negative[most_oc][i] + var_num + 1];
        sop_n.func[ln*i + vn.size() + 2]    =   pSop.func[l*negative[most_oc][i] + var_num + 2];
        
    }
    for(int i = 0; i < positive[most_oc].size(); ++i)
    {
        for(int j = 0; j < vp.size(); ++j)
        {
            sop_p.func[lp*i + j] = pSop.func[l*positive[most_oc][i] + vp[j]];
        }
        sop_p.func[lp*i + vp.size()]        =   pSop.func[l*positive[most_oc][i] + var_num];
        sop_p.func[lp*i + vp.size() + 1]    =   pSop.func[l*positive[most_oc][i] + var_num + 1];
        sop_p.func[lp*i + vp.size() + 2]    =   pSop.func[l*positive[most_oc][i] + var_num + 2];
    }

    
    
    for(int i = 0; i < (ln-3); ++i){sop_n.i_sop.push_back(pSop.i_sop[vn[i]]);}
    for(int i = 0; i < (lp-3); ++i){sop_p.i_sop.push_back(pSop.i_sop[vp[i]]);}
    //sop_n.func = nSop_n;
    //sop_p.func = nSop_p;
    cur_fanin = cur_fanin + 1;
    
    Sop sopn, sopp;
    //sopn.o_sop = sop_n.o_sop;
    sopn.i_sop = sop_n.i_sop;
    //sopp.o_sop = sop_p.o_sop;
    sopp.i_sop = sop_p.i_sop;
    sopn.func = sop_n.func;
    sopp.func = sop_p.func;

    if (LSV_UnateCheck(sopn)) {new_node.push_back(sop_n);}
    else {LSV_BinateSplit(sopn, new_node, maxfanin, cur_fanin);}
    
    if (LSV_UnateCheck(sopp)) {new_node.push_back(sop_p);}
    else {LSV_BinateSplit(sopp, new_node, maxfanin, cur_fanin);}
}

//----------------------------------------------------------------------
//    main function : LSV_UnateSplit
//----------------------------------------------------------------------

bool LSV_UnateSplit(Sop pSop, vector<Sop_prime>& new_node)    // return true if factor
{
    int var_num = Abc_SopGetVarNum( pSop.func );
    int size = Abc_SopGetCubeNum( pSop.func );
    char * pCube; //iterator
    int cur_cube = 0; //current oprating cube
    int max_a[2] = {0,0}; //maximum [(i-th variable), (appearance times)]

    vector<int> appearance; //times
    vector< vector<int> > ap_cube; //cube
    for(int init = 0; init < var_num; ++init)
    {
        vector<int> empty;
        // empty = {};
        ap_cube.push_back(empty);
        appearance.push_back(0);
    }
    
    // calculating appearance
    Abc_SopForEachCube( pSop.func, var_num, pCube )
    {
        for(int i = 0; i < var_num; ++i)
        {
            if (pCube[i] != '-')
            {
                appearance[i] = appearance[i] + 1;
                ap_cube[i].push_back(cur_cube);
            }
            if (appearance[i] > max_a[1])
            {
                max_a[0] = i;
                max_a[1] = appearance[i];
            }
        }
        cur_cube = cur_cube + 1;
    }

    bool once = true;  //condition 1
    bool factor = false;  //condition 2
    vector<int> v_factor; //factor variables

    int l = var_num + 3; //length of a cube
    
    for (int j = 0; j < var_num; ++j)
    {
        if (appearance[j] != 1) {once = false;}
        if (appearance[j] == size)
        {
            factor = true;
            v_factor.push_back(j);
        }
    }

    Sop_prime sop1, sop2; //output
    //char nSop_1[100] = {'-'}; //output
    //char nSop_2[100] = {'-'}; //output
    
    vector<int> v1, v2;
    
    // first case
    if (once)
    {
        int cut = size/2;
        // variable needed for sop1 and sop2
        for (int i = 0; i < cut; ++i)
        {
            for (int j = 0; j < var_num; ++j)
            {
                if (pSop.func[l*i + j] != '-')
                {
                    v1.push_back(j);
                }
            }
        }
        sort(v1.begin(), v1.end());
        int p = 0; // iterator
        for (int i = 0; i < var_num; ++i)
        {
            if (i == v1[p]) {p = p + 1;}
            else {v2.push_back(i);}
        }
        
        // length of sop
        int l1 = v1.size() + 3;
        int l2 = v2.size() + 3;
        
        // Sop construction
        for (int i = 0; i < size; ++i)
        {
            if (i < cut)
            {
                for (int j = 0; j < v1.size(); ++j)
                {
                    sop1.func[l1*i + j] = pSop.func[l*i + v1[j]];
                }
                sop1.func[l1*i + v1.size()]        = pSop.func[l*i + var_num];
                sop1.func[l1*i + v1.size() + 1]    = pSop.func[l*i + var_num + 1];
                sop1.func[l1*i + v1.size() + 2]    = pSop.func[l*i + var_num + 2];
            }
            else
            {
                for (int j = 0; j < v2.size(); ++j)
                {
                    sop2.func[l2*i + j] = pSop.func[l*i + v2[j]];
                }
                sop2.func[l2*i + v2.size()]        = pSop.func[l*i + var_num];
                sop2.func[l2*i + v2.size() + 1]    = pSop.func[l*i + var_num + 1];
                sop2.func[l2*i + v2.size() + 2]    = pSop.func[l*i + var_num + 2];
            }
        }
    }
    
    // second case
    else if (factor)
    {
        // variable needed for sop1 and sop2
        v1 = v_factor;
        int p = 0; // iterator
        for (int i = 0; i < var_num; ++i)
        {
            if (i == v1[p]) {p = p + 1;}
            else {v2.push_back(i);}
        }
        
        // length of sop
        int l1 = v1.size() + 3;
        int l2 = v2.size() + 3;
        // Sop construction
        for (int i = 0; i < v1.size(); ++i)
        {
            sop1.func[i] = pSop.func[v1[i]];
        }
        sop1.func[v1.size()]       = pSop.func[var_num];
        sop1.func[v1.size() + 1]   = pSop.func[var_num + 1];
        sop1.func[v1.size() + 2]   = pSop.func[var_num + 2];
        
        for (int i = 0; i < size; ++i)
        {
            for (int j = 0; j < v2.size(); ++j)
            {
                sop2.func[l2*i + j] = pSop.func[l*i + v2[j]];
            }
            sop2.func[l2*i + v2.size()]        = pSop.func[l*i + var_num];
            sop2.func[l2*i + v2.size() + 1]    = pSop.func[l*i + var_num + 1];
            sop2.func[l2*i + v2.size() + 2]    = pSop.func[l*i + var_num + 2];
        }
    }
    
    // remaining
    else
    {
        int most_oc = max_a[0];
        vector<int> c1, c2; // cube in sop1/sop2
        for (int i = 0; i < size; ++i)
        {
            if (pSop.func[l*i + most_oc] != '-') {c1.push_back(i);}
            else {c2.push_back(i);}
        }
        // variable list construction
        vector<bool> care_list1, care_list2; // length = variable number
        for (int i = 0; i < var_num; ++i)
        {
            care_list1.push_back(false);
            care_list2.push_back(false);
        }
        
        for(int i = 0; i < c1.size(); ++i)
        {
            for(int j = 0; j < var_num; ++j)
            {
                if (pSop.func[l*c1[i] + j] != '-'){care_list1[j] = true;}
            }
        }
        for(int i = 0; i < c2.size(); ++i)
        {
            for(int j = 0; j < var_num; ++j)
            {
                if (pSop.func[l*c2[i] + j] != '-'){care_list2[j] = true;}
            }
        }
        
        for (int i = 0; i < var_num; ++i)
        {
            if (care_list1[i]) {v1.push_back(i);}
            if (care_list2[i]) {v2.push_back(i);}
        }
        
        // length of sop
        int l1 = v1.size() + 3;
        int l2 = v2.size() + 3;
        // Sop construction
        for (int i = 0; i < c1.size(); ++i)
        {
            for (int j = 0; j < v1.size(); ++j)
            {
                sop1.func[l1*i + j] = pSop.func[l*c1[i] + v1[j]];
            }
            sop1.func[l1*i + v1.size()]        = pSop.func[l*c1[i] + var_num];
            sop1.func[l1*i + v1.size() + 1]    = pSop.func[l*c1[i] + var_num + 1];
            sop1.func[l1*i + v1.size() + 2]    = pSop.func[l*c1[i] + var_num + 2];
        }
        for (int i = 0; i < c2.size(); ++i)
        {
            for (int j = 0; j < v2.size(); ++j)
            {
                sop2.func[l2*i + j] = pSop.func[l*c2[i] + v2[j]];
            }
            sop2.func[l2*i + v2.size()]        = pSop.func[l*c2[i] + var_num];
            sop2.func[l2*i + v2.size() + 1]    = pSop.func[l*c2[i] + var_num + 1];
            sop2.func[l2*i + v2.size() + 2]    = pSop.func[l*c2[i] + var_num + 2];
        }
    }
    
    
    // output
    //Sop sop_1, sop_2;
    //sop_1.func = nSop_1;
    //sop_2.func = nSop_2;
    //sop1.o_sop = pSop.o_sop;
    //sop2.o_sop = pSop.o_sop;
    for(int i = 0; i < v1.size(); ++i){sop1.i_sop.push_back(pSop.i_sop[v1[i]]);}
    for(int i = 0; i < v2.size(); ++i){sop2.i_sop.push_back(pSop.i_sop[v2[i]]);}
    new_node.push_back(sop1);
    new_node.push_back(sop2);
    /*
    for (int i = 0; i < 5; ++i)
    {
        printf("%d %c \n", i, new_node[0].func[i]);
    }
    for (int i = 0; i < 14; ++i)
    {
        printf("%d %c \n", i, new_node[1].func[i]);
    }
     */
    return factor;
}


//----------------------------------------------------------------------
//    main function : LSV_Collapse
//----------------------------------------------------------------------
void cart_product_sop(
  Vvi& rvvi, // final result
  Vi& rvi, // current result
  Vvi::const_iterator me, // current input
  Vvi::const_iterator end) // final input
{
  if (me == end) 
  {
    // terminal condition of the recursion. We no longer have
    // any input vectors to manipulate. Add the current result (rvi)
    // to the total set of results (rvvi).
    rvvi.push_back(rvi);
    return;
  }
  
  // need an easy name for my vector-of-ints
  const Vi& mevi = *me;
  for (Vi::const_iterator it = mevi.begin() ; it != mevi.end() ; it++)
  {
    // final rvi will look like "a, b, c, ME, d, e, f"
    // At the moment, rvi already has "a, b, c"
    rvi.push_back(*it); // add ME
    cart_product_sop(rvvi, rvi, me+1, end); // add "d, e, f"
    rvi.pop_back(); // clean ME off for next round
  }
}

Vvi refine_cube_idx(Vvi& cube_idx)
{ 
  // refine (1) : 把每個 cube 重複的 element 刪掉 (https://reurl.cc/l95ZxE)
    // input : [[a, b, a], [a, b, d], [a, d, a], ..., [c, d, d]]
    // output : [[a, b], [a, b, d], [a, d], ..., [c, d]]
  for (int i = 0 ; i < cube_idx.size() ; ++i)
  {
    sort(cube_idx[i].begin(), cube_idx[i].end());
    cube_idx[i].erase(unique(cube_idx[i].begin(), cube_idx[i].end()), cube_idx[i].end());
  }
  // refine (2) : 把每個被包含的 cube 刪掉 (vector sort 完可用 "==" 比較)
    // input : [[a, b, d], [a, d], [a, c, d], [a, d], [a]]
    // output : [[a]]
    // 先 duplicate 一份 cube_idx, 如果有包含的話, 把被包含的那個從 duplicate 中刪掉 (erase ?)
  Vvi ans = cube_idx;
  for (int i = 0 ; i < cube_idx.size() ; ++i)
  {
    for (int j = 0 ; j < cube_idx.size() ; ++j)
    {
      if (cube_idx[i] == cube_idx[j]) { continue; }
      // 檢查是否包含
      else 
      {
        Vi set_diff;
        Vi::iterator it;
        it = set_difference(cube_idx[i].begin(), cube_idx[i].end(), cube_idx[j].begin(), cube_idx[j].end(), set_diff.begin());
        if (cube_idx[i].size() == cube_idx[j].size() + int(it - set_diff.begin()))
        {
          // cube_idx[i] 要被刪掉
          auto iter = std::remove(ans.begin(), ans.end(), cube_idx[i]);
          ans.erase(iter, ans.end());
          break;
        }
      }
    }
  }
  // return
  return ans;
}

Vec_Ptr_t* one_cube_complement(Vec_Ptr_t* sop_list, int sop_length)
{
  const char* sop_0 = (char *)Vec_PtrEntry(sop_list, 0);
  vector<char*> temp_sop;
  for (int i = 0 ; i < sop_length ; ++i)
  {
    if (sop_0[i] == '1')
    {
      string temp_str(sop_length, '-');
      temp_str.replace(i, 1, "0");
      char* temp = &temp_str[0];
      temp_sop.push_back(temp);
    }
    else if (sop_0[i] == '0')
    {
      string temp_str(sop_length, '-');
      temp_str.replace(i, 1, "1");
      char* temp = &temp_str[0];
      temp_sop.push_back(temp);
    }
  }
  Vec_Ptr_t* final_list;
  for (int i = 0 ; i < temp_sop.size() ; ++i)
  {
    Vec_PtrPush(final_list, temp_sop[i]);
  }
  return final_list;
}

Vec_Ptr_t* multi_cube_complement(Vec_Ptr_t* sop_list, int sop_length)
{
  // int = 0 --> offset ; int = 1 --> onset ; int = 2 --> don't care
  vector<int> onset_or_offset(sop_length, 2);
  vector<vector<int> > cube_idx;
  for (int i = 0 ; i < sop_list->nSize ; ++i)
  {
    vector<int> temp_idx;
    for (int j = 0 ; j < sop_length ; ++j)
    {
      if (((char *)Vec_PtrEntry(sop_list, i))[j] == '0') { onset_or_offset[j] = 0; temp_idx.push_back(j); }
      else if (((char *)Vec_PtrEntry(sop_list, i))[j] == '1') { onset_or_offset[j] = 1; temp_idx.push_back(j); }
    }
    cube_idx.push_back(temp_idx);
  }
  // 同 program.cc 作法, 先不管每個 lit 的 phase, 做 cart_product
  Vvi output;
  Vi outputTemp;
  cart_product_sop(output, outputTemp, cube_idx.begin(), cube_idx.end());
  // refine "Vvi output"
  Vvi refined_sop;
  refined_sop = refine_cube_idx(output);
  // 將 output 轉成 char* pSop
  vector<char*> temp_sop;
  for (int i = 0 ; i < refined_sop.size() ; ++i)
  {
    string temp_ans(sop_length, '-');
    for (int j = 0 ; j < refined_sop[i].size() ; ++j)
    {
      // need to invert phase
      if (onset_or_offset[refined_sop[i][j]] == 0) { temp_ans.replace(refined_sop[i][j], 1, "1"); }
      else if (onset_or_offset[refined_sop[i][j]] == 1) { temp_ans.replace(refined_sop[i][j], 1, "0"); }
    }
    char* temp = &temp_ans[0];
    temp_sop.push_back(temp);
  }
  Vec_Ptr_t* final_list;
  for (int i = 0 ; i < temp_sop.size() ; ++i)
  {
    Vec_PtrPush(final_list, temp_sop[i]);
  }
  return final_list;
}

void combine_fanin_sop(Vec_Ptr_t* combined_sop, Vec_Ptr_t* fanin0_sop, Vec_Ptr_t* fanin1_sop, int sop_length)
{
  // int = 0 --> offset ; int = 1 --> onset ; int = 2 --> don't care
  vector<int> onset_or_offset(sop_length, 2);
  vector<vector<int> > cube_idx_0, cube_idx_1;
  for (int i = 0 ; i < fanin0_sop->nSize ; ++i)
  {
    vector<int> temp_idx;
    for (int j = 0 ; j < sop_length ; ++j)
    {
      if (((char *)Vec_PtrEntry(fanin0_sop, i))[j] == '0') { onset_or_offset[j] = 0; temp_idx.push_back(j); }
      else if (((char *)Vec_PtrEntry(fanin0_sop, i))[j] == '1') { onset_or_offset[j] = 1; temp_idx.push_back(j); }
    }
    cube_idx_0.push_back(temp_idx);
  }
  for (int i = 0 ; i < fanin1_sop->nSize ; ++i)
  {
    vector<int> temp_idx;
    for (int j = 0 ; j < sop_length ; ++j)
    {
      if (((char *)Vec_PtrEntry(fanin1_sop, i))[j] == '0') { onset_or_offset[j] = 0; temp_idx.push_back(j); }
      else if (((char *)Vec_PtrEntry(fanin1_sop, i))[j] == '1') { onset_or_offset[j] = 1; temp_idx.push_back(j); }
    }
    cube_idx_1.push_back(temp_idx);
  }
  // 同 program.cc 作法, 先不管每個 lit 的 phase, 做 cart_product
  vector<vector<int> > temp_ans;
  for (int i = 0 ; i < fanin0_sop->nSize ; ++i)
  {
    vector<vector<int> > cube_idx_0_temp;
      for (int j = 0 ; j < cube_idx_0.size() ; ++j)
          cube_idx_0_temp.push_back(cube_idx_0[j]);
    vector<vector<int> > cube_idx;
    cube_idx.insert(cube_idx.end(), cube_idx_0_temp.begin(), cube_idx_0_temp.end());
    cube_idx.insert(cube_idx.end(), cube_idx_1.begin(), cube_idx_1.end());
    
    Vvi output;
    Vi outputTemp;
    cart_product_sop(output, outputTemp, cube_idx.begin(), cube_idx.end());
    for (int j = 0 ; j < output.size() ; ++j)
    {
      temp_ans.push_back(output[j]);
    }
  }
  // refine "Vvi output"
  Vvi refined_sop;
  refined_sop = refine_cube_idx(temp_ans);
  // 將 output 轉成 char* pSop
  vector<char*> temp_sop;
  for (int i = 0 ; i < refined_sop.size() ; ++i)
  {
    string temp_ans(sop_length, '-');
    for (int j = 0 ; j < refined_sop[i].size() ; ++j)
    {
      if (onset_or_offset[refined_sop[i][j]] == 0) { temp_ans.replace(refined_sop[i][j], 1, "0"); }
      else if (onset_or_offset[refined_sop[i][j]] == 1) { temp_ans.replace(refined_sop[i][j], 1, "1"); }
    }
    char* temp = &temp_ans[0];
    temp_sop.push_back(temp);
  }
  Vec_Ptr_t* final_list;
  for (int i = 0 ; i < temp_sop.size() ; ++i)
  {
    Vec_PtrPush(final_list, temp_sop[i]);
  }
  combined_sop = final_list;

}


void BuildSop(Aig_Man_t* pAig, Aig_Obj_t* swapped_node, vector<Aig_Obj_t*>& PI_node, int& sop_length)
{
  if (Aig_ObjIsTravIdCurrent(pAig, swapped_node)) { return; }
  // fMarkA = 0 --> 還不能合成為 Sop  ;  fMarkA = 1 or PI --> 可以合成做 Sop
  // 如果是 PI --> 可以合成 sop (注意 sop variable 順序)
  if (swapped_node->pFanin0 == NULL) 
  {
    // initialize
    string temp_sop(sop_length, '-');
    if (Aig_IsComplement(swapped_node)) { temp_sop.replace(PI_node.size(), 1, "0"); }
    else { temp_sop.replace(PI_node.size(), 1, "1"); }
    char* temp = &temp_sop[0];
    Vec_PtrPush(swapped_node->pSop, temp);
    // mark traversed
    Aig_ObjSetTravIdCurrent(pAig, swapped_node);
    // mark sop-ed
    Aig_ObjSetMarkA(swapped_node);
    // 按照 traverse 順序依序加入 PI node --> 對應 sop variable 順序
    PI_node.push_back(swapped_node);
    return;
  }

  // 如果 child 都合成完了 --> 可以合成 sop (兩個 vector<char*> 合併)
  else if ((Aig_ObjIsMarkA(swapped_node->pFanin0) == 1) && (Aig_ObjIsMarkA(swapped_node->pFanin1) == 1))
  {
    // output phase 如果沒有 complement, 直接 return 往上走
    // 先將 fanin 有 complement 的情況處理 --> 才能將兩個 fanin 合併
    Vec_Ptr_t* fanin0_sop = swapped_node->pFanin0->pSop;
    Vec_Ptr_t* fanin1_sop = swapped_node->pFanin1->pSop;
    if (Aig_IsComplement(swapped_node->pFanin0))
    {
      if (swapped_node->pFanin0->pSop->nSize == 1) { fanin0_sop = one_cube_complement(swapped_node->pFanin0->pSop, sop_length); }
      else if (swapped_node->pFanin0->pSop->nSize > 1) { fanin0_sop = multi_cube_complement(swapped_node->pFanin0->pSop, sop_length); }
    }
    if (Aig_IsComplement(swapped_node->pFanin1))
    {
      if (swapped_node->pFanin1->pSop->nSize == 1) { fanin1_sop = one_cube_complement(swapped_node->pFanin1->pSop, sop_length); }
      else if (swapped_node->pFanin1->pSop->nSize > 1) { fanin1_sop = multi_cube_complement(swapped_node->pFanin1->pSop, sop_length); }
    }
    // 現在要將 fanin0_sop, fanin1_sop AND 起來 (不用管輸出 phase 因為會在下次他變成 fanin 時操作 inv, 但最後 PO 要管嗎 ?)
    Vec_Ptr_t* combined_sop;
    combine_fanin_sop(combined_sop, fanin0_sop, fanin1_sop, sop_length);

    // 把上面合併完的結果存到 swapped_node->pSop
    swapped_node->pSop = combined_sop;

    // mark traversed
    Aig_ObjSetTravIdCurrent(pAig, swapped_node);
    // mark sop-ed
    Aig_ObjSetMarkA(swapped_node);
    return;
  }

  // 如果 child0 和 child1 都還沒合成 --> 繼續往 child0 traverse 
  else if (Aig_ObjIsMarkA(swapped_node->pFanin0) == 0)
  {
    BuildSop(pAig, swapped_node->pFanin0, PI_node, sop_length);
  }

  // 如果 child0 合成完但 child1 還沒, 且 child1 是 PI --> 往 child1 traverse 並直接合併到目前所有 cube
  else if ((Aig_ObjIsMarkA(swapped_node->pFanin0) == 1) && (Aig_ObjIsMarkA(swapped_node->pFanin1) == 0))
  {
    BuildSop(pAig, swapped_node->pFanin1, PI_node, sop_length);
  }

}



Sop_prime Lsv_Collapse(Abc_Obj_t* pObj, int max_fanin)
{
  // threshold fanin # > 0
  assert (max_fanin > 0);
  // initial variable 
    // duplicate the "object" not pointer
  Abc_Obj_t n_prime_obj = *pObj;
  Abc_Obj_t* n_prime = &n_prime_obj;
  // new vertex
  vertex Vx;
  Vx.new_vertex = false;
  Vx.Id = n_prime->Id;
  Vx.Obj = pObj;
  // new Sop_prime
  Sop_prime sop_final;
  sop_final.o_sop = Vx;

  int L = Abc_ObjFaninNum(pObj);
  if (pObj->fMarkA == 2) { return sop_final; }
  // mark 不重複 collapse
  pObj->fMarkA = 2;
  // if not exceeds threshold fanin #
  for (int i = 0 ; i < pObj->vFanins.nSize ; ++i)
  {
    Abc_Obj_t* cur_node = Abc_ObjFanin(pObj, i);
    while (L <= max_fanin)
    {
      // if PI or multi-fanout 
      if ((Abc_ObjType(cur_node) == ABC_OBJ_PI) || \
          (Abc_ObjFanin0(cur_node)->vFanouts.nSize > 1))
      {
        // add the node into Sop_prime
        vertex temp_vx;
        temp_vx.new_vertex = false;
        temp_vx.Id = cur_node->Id;
        temp_vx.Obj = cur_node;
        sop_final.i_sop.push_back(temp_vx);
        break;
      }
      // if not PI and not multi-fanout
      else
      {
        int new_node_num = Abc_ObjFaninNum(cur_node);
        vector<Abc_Obj_t*> temp_node;
        for (int j = 0 ; j < new_node_num ; ++j)
        {
          temp_node.push_back(Abc_ObjFanin(cur_node, j));
        }
        // if exceeds threshold fanin # --> 存當前的 node
        if (L - 1 + new_node_num > max_fanin) 
        {  
          // add the node into Sop_prime
          vertex temp_vx;
          temp_vx.new_vertex = false;
          temp_vx.Id = cur_node->Id;
          temp_vx.Obj = cur_node;
          sop_final.i_sop.push_back(temp_vx);
          break; 
        }
        else // substitution
        {
          // update L --> sub original node, plus new node #
          L = L - 1 + new_node_num; 
          // substitution --> add the node into Sop_prime
            // no matter if all new node are PI or multi-fanout --> 加進 node_list, 要判斷是否 PI 等留給主函數
          for (int j = 0 ; j < temp_node.size() ; ++j)
          {
            // add the node into Sop_prime
            vertex temp_vx;
            temp_vx.new_vertex = false;
            temp_vx.Id = temp_node[j]->Id;
            temp_vx.Obj = temp_node[j];
            sop_final.i_sop.push_back(temp_vx);
          }
          break;
        }
      }
    }
  }

  // Operation 1 : 從 root_node_list 建立一個新的 Ntk, 以這些 node 為 PI 建立出 Aig (Abc_NtkToDar)
  int sop_length = sop_final.i_sop.size() + 1;
  Abc_Ntk_t* trans_pNtk = n_prime->pNtk;
  // PI's vFanins --> NULL ; 他小孩的 fanout 也要切斷
  // for (int i = 1 ; i < n_prime->root_node_list.size() ; ++i)
  // { 
  //   for (int j = 0 ; j < n_prime->root_node_list[i]->vFanins.nSize ; ++j)
  //   {
  //     Vec_IntClear(&n_prime->root_node_list[i]->vFanins.pArray[j]->vFanouts);
  //   }
  //   Vec_IntClear(&n_prime->root_node_list[i]->vFanins);
  // }
  // 改 Abc_Ntk_t 的 vPis, vCis
  Vec_PtrClear(trans_pNtk->vPis);
  Vec_PtrClear(trans_pNtk->vCis);
  for (int i = 1 ; i < sop_length ; ++i)
  {
    Vec_PtrPush(trans_pNtk->vPis, sop_final.i_sop[i].Obj);
    Vec_PtrPush(trans_pNtk->vCis, sop_final.i_sop[i].Obj);
  }
  
  // Operation 2 : PI 為 Sop variable (不包含 root node), 依序往上爆出 output 的 Sop
  trans_pNtk = Abc_NtkStrash(trans_pNtk, 0, 1, 0);
    // pNtk --> pAig
  Aig_Man_t* pAig = Abc_NtkToDar(trans_pNtk, 0, 1);
    // swap child --> let leftest child be the deepest 
    // ??? assume only a PO ???
  Aig_Obj_t* swapped_node = Aig_ManCo(pAig, 0);
    // 從最底下開始往上合成 Sop
      // swapped_node --> Aig tree 的 root
      // cur_node --> 最左邊底下的 child (begin to build SOP)
  Vec_Ptr_t* node_to_sop;
    // 這時呼叫函數輸出 vector<char*> node_to_sop (解答)
    // 全部 fmarkA 先 reset --> fmarkA 標記是否可以合成 sop
  Aig_Obj_t* pObj_2;
  vector<Aig_Obj_t*> PI_node; // 並藉由目前長度去算應該要將值 assign 到 sop 的第幾個變數
  int node = 0;
  Aig_ManForEachNode(pAig, pObj_2, node) { Aig_ObjClearMarkA(pObj_2); }
  Aig_ManIncrementTravId(pAig);
    // 不考慮 xor 這種雙層電路, 所以 level 最高為 2 ?
  BuildSop(pAig, swapped_node, PI_node, sop_length);
  node_to_sop = swapped_node->pSop;
  // 如果 output phase 為 neg, 記得先做 complement
  if (Aig_IsComplement(swapped_node))
  {
    if (swapped_node->pSop->nSize == 1) { node_to_sop = one_cube_complement(swapped_node->pSop, sop_length); }
    else if (swapped_node->pSop->nSize > 1) { node_to_sop = multi_cube_complement(swapped_node->pSop, sop_length); }
  }

  // Operation 3 : 將 Sop 存到 n_prime root node's "collapsed_sop"
  string ans_sop;
  for (int i = 0 ; i < node_to_sop->nSize ; ++i)
  {
    string temp((char *)Vec_PtrEntry(node_to_sop, i));
    string temp_str = temp + " 1\n";
    ans_sop.append(temp_str);
  }
    // const char* -> char[]
  const char* temp_final_sop = ans_sop.c_str();
  strcpy(sop_final.func, temp_final_sop);

  // return collapsed node (pObj->root_node_list)
    // if n_prime -> root_node_list.size() > 0 --> 有 collapse 
  return sop_final;

}


//----------------------------------------------------------------------
//    main function : LSV_Threshold
//----------------------------------------------------------------------

void LSV_Threshold(Abc_Ntk_t* pNtk, int max_fanin)
{
    int                 i;
    int                 index = 0;
    Abc_Obj_t*          Po;
    vector<Abc_Obj_t*>  collapse_list;
    vector<Sop_prime>   check_list;
    vector<Gate>        gate_list;
    
    Abc_NtkForEachCo(pNtk, Po, i)
    {
        collapse_list.push_back(Po);
        while(collapse_list.size() > 0)
        {
            // Sop construction
            Sop_prime split_node;
            split_node = LSV_Collapse(collapse_list[0], max_fanin);
            check_list.push_back(split_node);
            
            // start threshold synthesis
            while(check_list.size() > 0)
            {
                //--------------Sop_prime -> Sop-------------------//
                Sop pSop;
                pSop.o_sop = check_list[0].o_sop;
                pSop.i_sop = check_list[0].i_sop;
                pSop.func  = check_list[0].func;
                //-------------------------------------------------//
                if (LSV_UnateCheck(pSop))
                {
                    vector<int> T_weight;
                    T_weight = LSV_ILPCheck(pSop.func);
                    if (T_weight.size() > 0)
                    {
                        Gate new_gate;
                        new_gate.name = pSop.o_sop;
                        for (int i = 0; i < (T_weight.size() - 1); ++i)
                        {
                            new_gate.weight.push_back(T_weight[i]);
                            new_gate.fanin.push_back(pSop.i_sop[i]);
                            collapse_list.push_back(pSop.i_sop[i].Obj);
                        }
                        new_gate.T = T_weight[T_weight.size() - 1];
                        gate_list.push_back(new_gate);
                    }
                    // unate splitting
                    else
                    {
                        bool factored;
                        vector<Sop_prime> Sops;
                        factored = LSV_UnateSplit(pSop, Sops);
                        vector<int> w1, w2; // weight vector of split nodes
                        //-------------- array -> char* -------------------//
                        char * func1, * func2;
                        func1  = Sops[0].func;
                        func2  = Sops[1].func;
                        //-------------------------------------------------//
                        w1 = LSV_ILPCheck(func1);
                        w2 = LSV_ILPCheck(func2);
                        if (factored)
                        {
                            Gate new_gate;
                            new_gate.name = Sops[0].o_sop;
                            new_gate.T = Sops[0].i_sop.size() + 1;
                            for (int i = 0; i < Sops[0].i_sop.size(); ++i)
                            {
                                new_gate.fanin.push_back(Sops[0].i_sop[i]);
                                new_gate.weight.push_back(1);
                                collapse_list.push_back(Sops[0].i_sop[i].Obj);
                            }
                            vertex v;
                            v.new_vertex = true;
                            v.Id = index;
                            index = index + 1;
                            new_gate.fanin.push_back(v);
                            new_gate.weight.push_back(1);
                            gate_list.push_back(new_gate);
                            // new sop
                            Sops[1].o_sop = v;
                            check_list.push_back(Sops[1]);
                        }
                        // not factored
                        else if (w1.size() > 0)
                        {
                            Gate new_gate;
                            new_gate.name = pSop.o_sop;
                            for (int i = 0; i < (w1.size() - 1); ++i)
                            {
                                new_gate.weight.push_back(w1[i]);
                                new_gate.fanin.push_back(Sops[0].i_sop[i]);
                                collapse_list.push_back(Sops[0].i_sop[i].Obj);
                            }
                            vertex v;
                            v.new_vertex = true;
                            v.Id = index;
                            index = index + 1;
                            new_gate.weight.push_back(w1[w1.size() - 1]);
                            new_gate.fanin.push_back(v);
                            new_gate.T = w1[w1.size() - 1];
                            gate_list.push_back(new_gate);
                            // Sop
                            Sops[1].o_sop = v;
                            check_list.push_back(Sops[1]);
                        }
                        else if (w2.size() > 0)
                        {
                            Gate new_gate;
                            new_gate.name = pSop.o_sop;
                            for (int i = 0; i < (w2.size() - 1); ++i)
                            {
                                new_gate.weight.push_back(w2[i]);
                                new_gate.fanin.push_back(Sops[1].i_sop[i]);
                                collapse_list.push_back(Sops[1].i_sop[i].Obj);
                            }
                            vertex v;
                            v.new_vertex = true;
                            v.Id = index;
                            index = index + 1;
                            new_gate.weight.push_back(w2[w2.size() - 1]);
                            new_gate.fanin.push_back(v);
                            new_gate.T = w2[w2.size() - 1];
                            gate_list.push_back(new_gate);
                            // Sop
                            Sops[0].o_sop = v;
                            check_list.push_back(Sops[0]);
                        }
                        // not threshold at all
                        else
                        {
                            int cube_num = Abc_SopGetCubeNum( pSop.func );
                            int var_num = Abc_SopGetVarNum( pSop.func );
                            if (cube_num > max_fanin)
                            {
                                Gate new_gate;
                                new_gate.T = 1;
                                new_gate.name = pSop.o_sop;
                                int sp_size = cube_num/max_fanin;
                                int remain = cube_num%max_fanin;
                                int cur_cube;
                                for (int i = 0; i < max_fanin; ++i)
                                {
                                    vertex v;
                                    v.new_vertex = true;
                                    v.Id = index;
                                    index = index + 1;
                                    
                                    Sop_prime new_node;
                                    new_node.o_sop = v;
                                    
                                    new_gate.weight.push_back(1);
                                    new_gate.fanin.push_back(v);
                                    // initialization
                                    vector<bool> care_list;
                                    for (int i = 0; i < var_num; ++i)
                                    {
                                        care_list.push_back(false);
                                    }
                                    // processing
                                    if (i < remain)
                                    {
                                        // variable list construction
                                        for (int j = 0; j < sp_size+1; ++j)
                                        {
                                            for (int k = 0; k < var_num; ++k)
                                            {
                                                if (check_list[0].func[(i*(sp_size+1)+j)*(var_num+3) + k] != '-')
                                                {
                                                    care_list[k] = true;
                                                }
                                            }
                                        }
                                        vector<int> var_list;
                                        for (int i = 0; i < var_num; ++i)
                                        {
                                            if (care_list[i]) {var_list.push_back(i);}
                                        }
                                        int length = var_list.size() + 3;
                                        // Sop
                                        for (int j = 0; j < sp_size+1; ++j)
                                        {
                                            for (int k = 0; k < var_list.size(); ++k)
                                            {
                                                new_node.func[j*(length) + k] = check_list[0].func[(i*(sp_size+1)+j)*(var_num+3) + var_list[k]];
                                            }
                                            new_node.func[j*(length) + var_list.size()] = check_list[0].func[var_num];
                                            new_node.func[j*(length) + var_list.size() + 1] = check_list[0].func[var_num + 1];
                                            new_node.func[j*(length) + var_list.size() + 2] = check_list[0].func[var_num + 2];
                                        }
                                    }
                                    else
                                    {
                                        // variable list construction
                                        for (int j = 0; j < sp_size; ++j)
                                        {
                                            for (int k = 0; k < var_num; ++k)
                                            {
                                                if (check_list[0].func[(i*sp_size + j + remain)*(var_num+3) + k] != '-')
                                                {
                                                    care_list[k] = true;
                                                }
                                            }
                                        }
                                        vector<int> var_list;
                                        for (int i = 0; i < var_num; ++i)
                                        {
                                            if (care_list[i]) {var_list.push_back(i);}
                                        }
                                        int length = var_list.size() + 3;
                                        // Sop
                                        for (int j = 0; j < sp_size; ++j)
                                        {
                                            for (int k = 0; k < var_list.size(); ++k)
                                            {
                                                new_node.func[j*(length) + k] = check_list[0].func[(i*sp_size + j + remain)*(var_num+3) + var_list[k]];
                                            }
                                            new_node.func[j*(length) + var_list.size()] = check_list[0].func[var_num];
                                            new_node.func[j*(length) + var_list.size() + 1] = check_list[0].func[var_num + 1];
                                            new_node.func[j*(length) + var_list.size() + 2] = check_list[0].func[var_num + 2];
                                        }
                                    }
                                    check_list.push_back(new_node);
                                }
                            }
                            else
                            {
                                char * pCube;
                                Gate new_gate;
                                new_gate.T = 1;
                                new_gate.name = check_list[0].o_sop;
                                Abc_SopForEachCube( pSop.func, var_num, pCube )
                                {
                                    vertex v;
                                    v.new_vertex = true;
                                    v.Id = index;
                                    index = index + 1;
                                    
                                    Sop_prime new_node;
                                    new_node.o_sop = v;
                                    
                                    new_gate.weight.push_back(1);
                                    new_gate.fanin.push_back(v);
                                    
                                    int ite = 0;
                                    for (int i = 0; i < var_num; ++i)
                                    {
                                        if (pCube[i] != '-')
                                        {
                                            new_node.func[ite] = pCube[i];
                                            new_node.i_sop.push_back(check_list[0].i_sop[i]);
                                            ite = ite + 1;
                                        }
                                    }
                                    new_node.func[ite] = pCube[var_num];
                                    new_node.func[ite + 1] = pCube[var_num + 1];
                                    new_node.func[ite + 2] = pCube[var_num + 2];
                                    check_list.push_back(new_node);
                                }
                            }
                        }
                    }
                }
                // binate splitting
                else
                {
                    vector<Sop_prime> Sops;
                    int cnt = 0;
                    LSV_BinateSplit(pSop, Sops, max_fanin, cnt);
                    int     sop_num = Sops.size();
                    Gate    new_gate;
                    new_gate.name   = pSop.o_sop;
                    new_gate.T      = 1;
                    for (int i = 0; i < sop_num; ++i)
                    {
                        vertex v;
                        v.new_vertex = true;
                        v.Id = index;
                        index = index + 1;
                        new_gate.fanin.push_back(v);
                        new_gate.weight.push_back(1);
                        // new Sop
                        Sops[i].o_sop = v;
                        check_list.push_back(Sops[i]);
                    }
                    gate_list.push_back(new_gate);
                }
                check_list.erase(check_list.begin());
            }
        }
    }
    // print
    /*
     OUTPUT TVALUE
     I1 I2 I3 ... IN
     W1 W2 W3 ... WN
     */
    int gate_num = gate_list.size();
    for (int i = 0; i < gate_num; ++i)
    {
        if (gate_list[i].name.new_vertex)
        {
            printf("%d %d \n", gate_list[i].name.Id, gate_list[i].T);
        }
        else
        {
            printf("*%d %d \n", gate_list[i].name.Obj->Id, gate_list[i].T);
        }
        
        int gate_size = gate_list[i].fanin.size();
        for (int j = 0; j < gate_size; ++j)
        {
            if (gate_list[i].fanin[j].new_vertex)
            {
                printf("%d ", gate_list[i].fanin[j].Id);
            }
            else
            {
                printf("*%d ", gate_list[i].fanin[j].Obj->Id);
            }
        }
        printf("\n");
        for (int j = 0; j < gate_size; ++j)
        {
            printf("%d ", gate_list[i].weight[j]);
        }
        printf("\n\n");
    }
}


//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------

int LSV_CommandThreshold(Abc_Frame_t* pAbc, int argc, char** argv)
{
  Abc_Ntk_t* pNtk = Abc_FrameReadNtk(pAbc);
  int c;
  Extra_UtilGetoptReset();
  while ((c = Extra_UtilGetopt(argc, argv, "h")) != EOF)
  {
    switch (c)
    {
      case 'h':
        goto usage;
      default:
        goto usage;
    }
  }
  if (!pNtk)
  {
    Abc_Print(-1, "Empty network.\n");
    return -1;
  }
  // main function
  LSV_Threshold(pNtk, stoi(argv[1]));
  return 0;

usage:
  Abc_Print(-2, "usage: \nread <filename_with_path>\nthreshold_optimize <max_fanin (int)> [-h]\n");
  Abc_Print(-2, "\t        execute threshold logic network optimization\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}
