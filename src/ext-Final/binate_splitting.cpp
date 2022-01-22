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
---------------------------------------
//    function definition
//----------------------------------------------------------------------
void LSV_BinateSplit(Sop pSop, vector<Sop>& new_node, int maxfanin)
{
    if (new_node.size() = maxfanin)
    {
        new_node.push_back(pSop);
        return 0;
    }
    
    int var_num = Abc_SopGetVarNum( pSop.func );
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
        empty = {};
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
    char * nSop_n; //output func
    char * nSop_p; //output func
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
            nSop_n[ln*i + j] = pSop.func[l*negative[most_oc][i] + vn[j]];
        }
        nSop_n[ln*i + vn.size()]        =   pSop.func[l*negative[most_oc][i] + var_num];
        nSop_n[ln*i + vn.size() + 1]    =   pSop.func[l*negative[most_oc][i] + var_num + 1];
        nSop_n[ln*i + vn.size() + 2]    =   pSop.func[l*negative[most_oc][i] + var_num + 2];
        
    }
    for(int i = 0; i < positive[most_oc].size(); ++i)
    {
        for(int j = 0; j < vp.size(); ++j)
        {
            nSop_p[lp*i + j] = pSop.func[l*positive[most_oc][i] + vp[j]];
        }
        nSop_p[lp*i + vp.size()]        =   pSop.func[l*positive[most_oc][i] + var_num];
        nSop_p[lp*i + vp.size() + 1]    =   pSop.func[l*positive[most_oc][i] + var_num + 1];
        nSop_p[lp*i + vp.size() + 2]    =   pSop.func[l*positive[most_oc][i] + var_num + 2];
    }

    
    Sop   sop_n, sop_p;
    for(int i = 0; i < (ln-3); ++i){sop_n.i_sop.push_back(pSop.i_sop[vn[i]]);}
    for(int i = 0; i < (lp-3); ++i){sop_p.i_sop.push_back(pSop.i_sop[vp[i]]);}
    sop_n.func = nSop_n;
    sop_p.func = nSop_p;

    if (LSV_UnateCheck(sop_n)) {new_node.push_back(sop_n);}
    else {LSV_BinateSplit(sop_n, new_node, maxfanin);}
    
    if (LSV_UnateCheck(sop_p)) {new_node.push_back(sop_p);}
    else {LSV_BinateSplit(sop_p, new_node, maxfanin);}
}
