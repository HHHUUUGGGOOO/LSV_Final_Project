/****************************************************************************
  FileName     [ thresDef.h ]
  PackageName  [ ext-Final ]
  Synopsis     [ Define basic data or var for final project ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

#ifndef _THRESDEF_H
#define _THRESDEF_H

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

extern Sop_prime LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
extern bool LSV_UnateCheck(Sop pSop);
extern vector<int> LSV_ILPCheck(char * pSop);
extern bool LSV_UnateSplit(Sop pSop, vector<Sop>& new_node);
extern void LSV_BinateSplit(Sop pSop, vector<Sop>& new_node, int maxfanin, int& cur_fanin);

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
//    each algorithm's function
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
            c_node = LSV_Collapse(collapse_list[0], max_fanin);
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
                if (LSV_UnateCheck(pSop.func))
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
                        char * func1, func2;
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
                            Sops[1].o_sop = v
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
                            Sops[0].o_sop = v
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
                                    
                                    Sop new_node;
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
                                Abc_SopForEachCube( pSop, var_num, pCube )
                                {
                                    vertex v;
                                    v.new_vertex = true;
                                    v.Id = index;
                                    index = index + 1;
                                    
                                    Sop new_node;
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
                    LSV_BinateSplit(pSop, Sops, max_fanin, 0);
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
            printf("*%d %d \n", gate_list[i].name.Obj.Id, gate_list[i].T);
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
                printf("*%d ", gate_list[i].fanin[j].Obj.Id);
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

// Sop_prime LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
// bool LSV_UnateCheck(Sop pSop);
// vector<int> LSV_ILPCheck(char * pSop);
// bool LSV_UnateSplit(Sop pSop, vector<Sop>& new_node);
// void LSV_BinateSplit(Sop pSop, vector<Sop>& new_node, int maxfanin, int& cur_fanin);



#endif // _THRESDEF_H
