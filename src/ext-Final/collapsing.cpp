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
#include <assert.h>
// self-file
#include "thresDef.h"
// abc

using namespace std;


//----------------------------------------------------------------------
//    function definition
//----------------------------------------------------------------------
Abc_Obj_t* LSV_Collapse(Abc_Obj_t* pObj, int max_fanin)
{
  // threshold fanin # > 0
  assert (max_fanin > 0);
  // initial variable 
    // duplicate the "object" not pointer
  Abc_Obj_t n_prime_obj = *pObj;
  Abc_Obj_t* n_prime = &n_prime_obj;
  int L = Abc_ObjFaninNum(pObj);
  // add the root node into root_node_list
  n_prime->root_node_list.push_back(pObj);
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
        // add the node into root_node_list
        vector<Abc_Obj_t*> single_node = {cur_node};
        n_prime->root_node_list.push_back(single_node);
        break;
      }
      // if not PI and not multi-fanout
      else
      {
        int new_node_num = Abc_ObjFaninNum(cur_node);
        bool can_break = true;
        vector<Abc_Obj_t*> temp_node;
        for (int j = 0 ; j < new_node_num ; ++j)
        {
          temp_node.push_back(Abc_ObjFanin(cur_node, j));
          if ((Abc_ObjType(Abc_ObjFanin(cur_node, j)) != ABC_OBJ_PI) && \
              (Abc_ObjFanin0(Abc_ObjFanin(cur_node, j)))->vFanouts.nSize <= 1) 
          { 
            can_break = false; 
          }
        }
        // if exceeds threshold fanin #
        if (L - 1 + new_node_num > max_fanin) { break; }
        // if all new node are PI or multi-fanout
        else if (can_break) { break; }
        else // substitution
        {
          // update L --> sub original node, plus new node #
          L = L - 1 + new_node_num; 
          // substitution --> add the node into root_node_list
          n_prime->root_node_list.push_back(temp_node);
          break;
        }
      }
    }
  }
  // return collapsed node (pObj->root_node_list)
    // if n_prime -> root_node_list.size() > 0 --> 有 collapse 
  return n_prime;

}