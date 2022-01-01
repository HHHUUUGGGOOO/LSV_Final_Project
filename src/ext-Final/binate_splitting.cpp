/****************************************************************************
  FileName     [ binate splitting.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : binate splitting ]
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
vector<char*> LSV_BinateSplit(char * pSop);
{
  int var_num = Abc_SopGetVarNum( pSop );
  char * pCube; //iterator
  char phase[var_num] = {'-'};  //phase of a variable
  bool conflict[var_num] = {false}; //unate or not
  int appearance[var_num] = {0};  //appearance times in SOP
  int max_a[2] = {0,0}; //maximum [(i-th variable), (appearance times)]
  vector<int> positive[var_num];  //cube with i-th var in positive phase 
  vector<int> negative[var_num];  //cube with i-th var in negative phase 
  int cur_cube = 0; //current oprating cube

  Abc_SopForEachCube( pSop, var_num, pCube )
  {
    //iteration over current cube
    for(int i = 0; i < var_num; ++i)
    {
      if (phase[i] == '-') 
      {
        phase[i] = pCube[i];
        if (pCube[i] == '0') 
        {
          negative[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }
        else if (pCube[i] == '1') 
        {
          positive[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }
        else {positive[i].push_back(cur_cube);}
      }

      else if (phase[i] == '0')
      {
        if (pCube[i] == '0') 
        {
          negative[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }
        else if (pCube[i] == '1') 
        {
          conflict[i] = true;
          positive[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }
        else {positive[i].push_back(cur_cube);}
      }

      else if (phase[i] == '1')
      {
        if (pCube[i] == '1') 
        {
          positive[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }
        else if (pCube[i] == '0') 
        {
          conflict[i] = true;
          negative[i].push_back(cur_cube);
          appearance[i] = appearance[i] + 1;
        }   
        else {positive[i].push_back(cur_cube);}
      } 

      //max appear update
      if ((appearance[i] > max_a[1]) && (conflict[i]))
      {
        max_a[0] = i;
        max_a[1] = appearance[i];
      }
    }

    cur_cube = cur_cube + 1;
  } 

  //splitting 
  int most_oc = max_a[0]; //var appears most frquently
  char * nSop_n; //output
  char * nSop_p; //output
  char * pCube_prime; //iterator
  int cur_cube_prime = 0; //current oprating cube
  int l = var_num + 3;  //cube length
  for(int i = 0; i < negative[most_oc].size(); ++i)
  {
    for(int j = 0; j < l; ++j)
    {
      nSop_n[l*i + j] = pSop[l*negative[most_oc][i] + j];
    }
  }
  for(int i = 0; i < positive[most_oc].size(); ++i)
  {
    for(int j = 0; j < l; ++j)
    {
      nSop_p[l*i + j] = pSop[l*positive[most_oc][i] + j];
    }
  }
  vector<char*> nSops;
  nSops.push_back(nSop_n);
  nSops.push_back(nSop_p);
  return nSops;
}