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
  Abc_Obj_t* n_prime = pObj;
  int L = Abc_ObjFaninNum(pObj);
  // if not exceeds threshold fanin #
  for (int i = 0 ; i < pObj->vFanins.nSize ; ++i)
  {
    Abc_Obj_t* cur_node = Abc_ObjFanin(pObj, i);
    while (L <= max_fanin)
    {
      // if not PI or multi-fanout
      if ((Abc_ObjType(cur_node) != ABC_OBJ_PI) && \
          (Abc_ObjFanin0(cur_node)->vFanouts.nSize <= 1))
      {
        int new_node_num = Abc_ObjFaninNum(cur_node);
        bool can_break = true;
        for (int j = 0 ; j < new_node_num ; ++j)
        {
          if ((Abc_ObjType(Abc_ObjFanin(cur_node, j)) != ABC_OBJ_PI) && \
              (Abc_ObjFanin0(Abc_ObjFanin(cur_node, j)))->vFanouts.nSize <= 1) 
          { 
            can_break = false; 
            break; 
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
          // substitution fanin
            // vecPtr.h --> Vec_PtrPush() : add cur_node's fanin
          for (int j = 0 ; j < new_node_num ; ++j)
          {
            Vec_PtrPush(n_prime->pNtk->vObjs, Abc_ObjFanin(cur_node, j));
          }
            // vecPtr.h --> Vec_PtrRemove() : remove cur_node
          Vec_PtrRemove(n_prime->pNtk->vObjs, cur_node);
          break;
        }
      }
    }
  }
  // return collapsed node
  return n_prime;

}