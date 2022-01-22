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

extern vector<int> LSV_ILPCheck(char * pSop);

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

extern ThresDef *thresDef;

class ThresDef
{
    public:
        ThresDef();
        ~ThresDef();

        /*========== whole process ===========*/
        Sop_prime LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
        bool LSV_UnateCheck(Sop pSop);
        bool LSV_UnateSplit(Sop pSop, vector<Sop>& new_node);
        void LSV_BinateSplit(Sop pSop, vector<Sop>& new_node, int maxfanin, int& cur_fanin);
        void LSV_Threshold(Abc_Ntk_t* pNtk, int max_fanin);

};

//----------------------------------------------------------------------
//    each algorithm's function
//----------------------------------------------------------------------





#endif // _THRESDEF_H
