/****************************************************************************
  FileName     [ unate splitting.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : unate splitting ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <unordered_map>
#include <unordered_set>
// self-file
#include "thresDef.h"
// abc

using namespace std;


//----------------------------------------------------------------------
//    function definition
//----------------------------------------------------------------------
bool LSV_UnateCheck(Sop pSop)
{
    int var_num = Abc_SopGetVarNum( pSop.func );
    char * pCube;
    vector<char> phase;
    for (int i = 0; i < var_num; ++i)
    {
        phase.push_back('-');
    }
    Abc_SopForEachCube( pSop.func, var_num, pCube )
    {
        for(int i = 0; i < var_num; ++i)
        {
            if (phase[i] == '-') {phase[i] = pCube[i];}

            else if (phase[i] == '0')
            {
                if (pCube[i] == '1') {return false;}  
            }
            else if (phase[i] == '1')
            {
                if (pCube[i] == '0') {return false;}   
            }
            else {return false;}
        }
    }
    return true;
}
