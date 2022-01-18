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
    char*           func;   // the sop function
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
    vector<Sop>         check_list;
    vector<Gate>        gate_list;
    
    Abc_NtkForEachCo(pNtk, Po, i)
    {
        collapse_list.push_back(Po);
        while(collapse_list.size() > 0)
        {
            Abc_Obj_t* c_node;
            c_node = LSV_Collapse(collapse_list[0], max_fanin);
            collapse_list.erase(collapse_list.begin());
            if ((c_node -> root_node_list).size() == 1) {continue;}
            
            // Abc_Obj_t* to vertex
            vertex cv_node;
            cv_node.new_vertex  = false;
            cv_node.Obj         = c_node;
            
            // Sop construction
            Sop split_node;
            split_node.func     = c_node -> collapsed_sop;
            split_node.o_sop    = cv_node;
            for (int i = 1; i < (c_node -> root_node_list).size(); ++i)
            {
                vertex v;
                v.new_vertex = false;
                v.Obj = (c_node -> root_node_list)[i]
                split_node.i_sop.push_back[v];
            }
            check_list.push_back(split_node);
            
            // start threshold synthesis
            while(check_list.size() > 0)
            {
                if (LSV_UnateCheck(check_list[0]))
                {
                    vector<int> T_weight;
                    T_weight = LSV_ILPCheck(check_list[0].func);
                    if (T_weight.size() > 0)
                    {
                        Gate new_gate;
                        new_gate.name = check_list[0].o_sop;
                        for (int i = 0; i < (T_weight.size() - 1); ++i)
                        {
                            new_gate.weight.push_back(T_weight[i]);
                            new_gate.fanin.push_back(check_list[0].i_sop[i]);
                        }
                        new_gate.T = T_weight[T_weight.size() - 1];
                        gate_list.push_back(new_gate);
                    }
                    // unate splitting
                    else
                    {
                        bool factored;
                        vector<Sop> Sops = {};
                        factored = LSV_UnateSplit(check_list[0], Sops);
                        vector<int> w1, w2; // weight vector of split nodes
                        w1 = LSV_ILPCheck(Sops[0].func);
                        w2 = LSV_ILPCheck(Sops[1].func);
                        if (factored)
                        {
                            Gate new_gate;
                            new_gate.name = check_list[0].o_sop;
                            new_gate.T = Sops[0].i_sop.size() + 1;
                            for (int i = 0; i < Sops[0].i_sop.size(); ++i)
                            {
                                new_gate.fanin.push_back(Sops[0].i_sop[i]);
                                new_gate.weight.push_back(1);
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
                            
                        }
                        else if (w2.size() > 0)
                        {
                            
                        }
                        // not threshold at all
                        else
                        {
                            
                        }
                    }
                }
                // binate splitting
                else
                {
                    vector<Sop> Sops = {};
                    LSV_BinateSplit(check_list[0], Sops, max_fanin);
                    // new vertex generation
                    // new gate generation
                    int     sop_num = Sops.size();
                    Gate    new_gate;
                    new_gate.name   = check_list[0].o_sop;
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
}

Abc_Obj_t* LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
bool LSV_UnateCheck(Sop pSop);
vector<int> LSV_ILPCheck(char * pSop);
bool LSV_UnateSplit(Sop pSop, vector<Sop>& new_node);
void LSV_BinateSplit(Sop pSop, vector<Sop>& new_node, int maxfanin);


//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------
static int LSV_CommandThreshold(Abc_Frame_t* pAbc, int argc, char** argv)
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
  Abc_Print(-2, "usage: threshold_optimize <max_fanin (int)> [-h]\n");
  Abc_Print(-2, "\t        execute threshold logic network optimization\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}


#endif // _THRESDEF_H