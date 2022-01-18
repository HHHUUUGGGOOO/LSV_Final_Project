/****************************************************************************
  FileName     [ unate splitting.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : unate splitting ]
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


//----------------------------------------------------------------------
//    function definition
//----------------------------------------------------------------------
bool LSV_UnateSplit(Sop pSop, vector<Sop>& new_node)    // return true if factor
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
        empty = {};
        ap_cube.push_back(empty);
        appearance.push_back(0);
    }
    
    // calculating appearance
    Abc_SopForEachCube( pSop, var_num, pCube )
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

    Sop sop1, sop2; //output
    char * nSop_1; //output
    char * nSop_2; //output

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
                    nSop_1[l1*i + j] = pSop.func[l*i + v1[j]];
                }
                nSop_1[l1*i + v1.size()]        = pSop.func[l*i + var_num];
                nSop_1[l1*i + v1.size() + 1]    = pSop.func[l*i + var_num + 1];
                nSop_1[l1*i + v1.size() + 2]    = pSop.func[l*i + var_num + 2];
            }
            else
            {
                for (int j = 0; j < v2.size(); ++j)
                {
                    nSop_2[l2*i + j] = pSop.func[l*i + v2[j]];
                }
                nSop_2[l2*i + v2.size()]        = pSop.func[l*i + var_num];
                nSop_2[l2*i + v2.size() + 1]    = pSop.func[l*i + var_num + 1];
                nSop_2[l2*i + v2.size() + 2]    = pSop.func[l*i + var_num + 2];
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
            nSop_1[i] = pSop.func[v1[i]];
        }
        nSop_1[v1.size()]       = pSop.func[var_num];
        nSop_1[v1.size() + 1]   = pSop.func[var_num + 1];
        nSop_1[v1.size() + 2]   = pSop.func[var_num + 2];
        
        for (int i = 0; i < size; ++i)
        {
            for (int j = 0; j < v2.size(); ++j)
            {
                nSop_2[l2*i + j] = pSop.func[l*i + v2[j]];
            }
            nSop_2[l2*i + v2.size()]        = pSop.func[l*i + var_num];
            nSop_2[l2*i + v2.size() + 1]    = pSop.func[l*i + var_num + 1];
            nSop_2[l2*i + v2.size() + 2]    = pSop.func[l*i + var_num + 2];
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
                nSop_1[l1*i + j] = pSop.func[l*c1[i] + v1[j]];
            }
            nSop_1[l1*i + v1.size()]        = pSop.func[l*c1[i] + var_num];
            nSop_1[l1*i + v1.size() + 1]    = pSop.func[l*c1[i] + var_num + 1];
            nSop_1[l1*i + v1.size() + 2]    = pSop.func[l*c1[i] + var_num + 2];
        }
        for (int i = 0; i < c2.size(); ++i)
        {
            for (int j = 0; j < v2.size(); ++j)
            {
                nSop_2[l2*i + j] = pSop.func[l*c2[i] + v2[j]];
            }
            nSop_2[l2*i + v2.size()]        = pSop.func[l*c2[i] + var_num];
            nSop_2[l2*i + v2.size() + 1]    = pSop.func[l*c2[i] + var_num + 1];
            nSop_2[l2*i + v2.size() + 2]    = pSop.func[l*c2[i] + var_num + 2];
        }
    }
    
    
    // output
    Sop sop_1, sop_2;
    sop_1.func = nSop_1;
    sop_2.func = nSop_2;
    for(int i = 0; i < v1.size(); ++i){sop_1.i_sop.push_back(pSop.i_sop[v1[i]]);}
    for(int i = 0; i < v2.size(); ++i){sop_2.i_sop.push_back(pSop.i_sop[v2[i]]);}
    new_node.push_back(sop_1);
    new_node.push_back(sop_2);
    return factor;
}
