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
struct Gate {
  pair<Abc_Obj_t*, Abc_Obj_t*>    i_o_node; // < output_node, input_node >
  pair<int, int>                  i_o_weight; // < o_weight, i_weight >
};


//----------------------------------------------------------------------
//    each algorithm's function
//----------------------------------------------------------------------
void LSV_Threshold(Abc_Ntk_t* pNtk, int max_fanin)
{
  
}

Abc_Obj_t* LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
bool LSV_UnateCheck(char * pSop);
bool LSV_ILPCheck(char * pSop);
vector<char*> LSV_UnateSplit(char * pSop);
vector<char*> LSV_BinateSplit(char * pSop);

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