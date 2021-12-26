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
void LSV_Collapse(Abc_Ntk_t* pNtk);
bool LSV_UnateCheck(Abc_Ntk_t* pNtk);
bool LSV_ILPCheck(Abc_Ntk_t* pNtk);
void LSV_UnateSplit(Abc_Ntk_t* pNtk);
void LSV_BinateSplit(Abc_Ntk_t* pNtk);

//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------
// collapse
static int LSV_CommandCollapse(Abc_Frame_t* pAbc, int argc, char** argv)
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
  LSV_Collapse(pNtk);
  return 0;

usage:
  Abc_Print(-2, "usage: collapse [-h]\n");
  Abc_Print(-2, "\t        collapse node\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}

// unate checking
static int LSV_CommandUnateCheck(Abc_Frame_t* pAbc, int argc, char** argv)
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
  LSV_UnateCheck(pNtk);
  return 0;

usage:
  Abc_Print(-2, "usage: unate_check [-h]\n");
  Abc_Print(-2, "\t        check if the input network is unate\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}

// ILP checking if threshold
static int LSV_CommandILPCheck(Abc_Frame_t* pAbc, int argc, char** argv)
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
  LSV_ILPCheck(pNtk);
  return 0;

usage:
  Abc_Print(-2, "usage: ILP_check [-h]\n");
  Abc_Print(-2, "\t        check if the network is threshold\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}

// unate splitting
static int LSV_CommandUnateSplit(Abc_Frame_t* pAbc, int argc, char** argv)
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
  LSV_UnateSplit(pNtk);
  return 0;

usage:
  Abc_Print(-2, "usage: unate_split [-h]\n");
  Abc_Print(-2, "\t        do unate splitting\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}

// binate splitting
static int LSV_CommandBinateSplit(Abc_Frame_t* pAbc, int argc, char** argv)
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
  LSV_BinateSplit(pNtk);
  return 0;

usage:
  Abc_Print(-2, "usage: binate_split [-h]\n");
  Abc_Print(-2, "\t        do binate splitting\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}


#endif // _THRESDEF_H