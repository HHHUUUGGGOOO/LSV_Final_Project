/****************************************************************************
  FileName     [ main.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ main file to execute the final project ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

// package
#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <time.h>
// self-file
#include "thresDef.h"
// abc

using namespace std;

//----------------------------------------------------------------------
//    initialize from ABC 
//----------------------------------------------------------------------
extern "C"
{
    // Abc_Ntk_t_ --> Aig_Man_t (src/base/abci/abcDar.c)
    Aig_Man_t *  Abc_NtkToDar( Abc_Ntk_t * pNtk, int fExors, int fRegisters );

    // procedures to start and stop the ABC framework
    // (should be called before and after the ABC procedures are called)
    void   Abc_Start();
    void   Abc_Stop();

    // procedures to get the ABC framework and execute commands in it
    typedef struct Abc_Frame_t_ Abc_Frame_t;
    Abc_Frame_t * Abc_FrameGetGlobalFrame();

    // used in "sprintf (refer to template in Google drive)" --> execute "command in abc"
    // work like ".script" --> automatically execute all operation
    int    Cmd_CommandExecute( Abc_Frame_t * pAbc, const char * sCommand );

}

Abc_Frame_t * pAbc = 0;

//----------------------------------------------------------------------
//    add new command
//----------------------------------------------------------------------
void init(Abc_Frame_t* pAbc)
{
  Cmd_CommandAdd(pAbc, "LSV", "threshold_optimize", LSV_CommandThreshold, 0);
}

void destroy(Abc_Frame_t* pAbc) {}

Abc_FrameInitializer_t frame_initializer = { init, destroy };

struct PackageRegistrationManager
{
  PackageRegistrationManager() { Abc_FrameAddInitializer(&frame_initializer); }
} lsvPackageRegistrationManager;


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
  // LSV_Threshold(pNtk, stoi(argv[1]));
  cout << "==========================" << endl;
  cout << "argv[1] : " << stoi(argv[1]) << endl;
  cout << "==========================" << endl;
  // Abc_Obj_t* LSV_Collapse(Abc_Obj_t* pObj, int max_fanin);
  return 0;

usage:
  Abc_Print(-2, "usage: \nread <filename_with_path>\nthreshold_optimize <max_fanin (int)> [-h]\n");
  Abc_Print(-2, "\t        execute threshold logic network optimization\n");
  Abc_Print(-2, "\t-h    : print the command usage\n");
  return 1;

}


