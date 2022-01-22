/****************************************************************************
  FileName     [ binate splitting.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : binate splitting ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
// self-file
#include "thresDef.h"
// abc

using namespace std;

extern ThresDef *thresDef;

//---------------------------------------
//    function definition
//----------------------------------------------------------------------
ThresDef::void LSV_BinateSplit(Sop pSop, vector<Sop_prime>& new_node, int maxfanin, int& cur_fanin)
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
