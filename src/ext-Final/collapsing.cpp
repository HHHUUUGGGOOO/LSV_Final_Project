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
        n_prime->root_node_list.push_back(cur_node);
        // add the hierarchical version
        vector<Abc_Obj_t*> temp_node = {cur_node};
        n_prime->root_node_list_hierar.push_back(temp_node);
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
          n_prime->root_node_list.push_back(cur_node);
          vector<Abc_Obj_t*> tmp = {cur_node};
          n_prime->root_node_list_hierar.push_back(tmp);
          break; 
        }
        else // substitution
        {
          // update L --> sub original node, plus new node #
          L = L - 1 + new_node_num; 
          // substitution --> add the node into root_node_list
            // no matter if all new node are PI or multi-fanout --> 加進 node_list, 要判斷是否 PI 等留給主函數
          for (int j = 0 ; j < temp_node.size() ; ++j)
          {
            n_prime->root_node_list.push_back(temp_node[j]);
          }
          // add the hierarchical version
          n_prime->root_node_list_hierar.push_back(temp_node);
          break;
        }
      }
    }
  }
  // return collapsed node (pObj->root_node_list)
    // if n_prime -> root_node_list.size() > 0 --> 有 collapse 
  return n_prime;

}