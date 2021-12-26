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
//    each algorithm;s function
//----------------------------------------------------------------------
void LSV_Threshold(Abc_Ntk_t* pNtk, int max_fanin);

void LSV_Collapse(Abc_Ntk_t* pNtk, int max_fanin);
bool LSV_UnateCheck(vector<vector<Abc_Obj_t*>> logic_SOP);
bool LSV_ILPCheck(vector<vector<Abc_Obj_t*>> logic_SOP);
void LSV_UnateSplit(vector<vector<Abc_Obj_t*>> logic_SOP, int max_fanin);
void LSV_BinateSplit(vector<vector<Abc_Obj_t*>> logic_SOP, int max_fanin);

//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------
// collapse
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