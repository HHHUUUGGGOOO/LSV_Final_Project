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

Abc_Obj_t* LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);



#endif // _THRESDEF_H
