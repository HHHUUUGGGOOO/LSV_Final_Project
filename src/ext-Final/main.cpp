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
//    main function
//----------------------------------------------------------------------
int main(int argc, char** argv)
{
  // setup
  clock_t t_init, t_final;
  t_init = clock();
  Abc_Start();
  pAbc = Abc_FrameGetGlobalFrame();

  // input command line : ./LSV_Threshold <relative_path><input_filename> <(int) max_fanin>
  if (argc < 3)
	{
		cout << "usage: ./LSV_Thres <relative_path><input_filename> <(int) max_fanin>" << endl;
		return 0;
	}

  // show arguments
	for ( int i = 0 ; i < argc ; ++i )
		cout << argv[i] << " ";
	cout << endl;

  // int max_fanin = stoi(string(argv[2]));

  // Command : read input_file
  sprintf( Command, "read %s", argv[1] ); Cmd_CommandExecute( pAbc, Command );
  // Command : main threshold logic synthesis
  sprintf( Command, "threshold_optimize %", argv[2] ); Cmd_CommandExecute( pAbc, Command );
  
  // Finish
  t_final = clock();
  cout << "=================================================================" << endl;
  cout << "   Execution Time = " << double(t_final - t_init)/CLOCKS_PER_SEC << " (S)" << endl;
  cout << "=================================================================" << endl;

  // terminate
  Abc_Stop();
  return 0;

}


