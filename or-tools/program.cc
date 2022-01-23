/****************************************************************************
  FileName     [ threshold_checking_ILP.cpp ]
  PackageName  [ ext-Final ]
  Synopsis     [ Algorithm : threshold checking via ILP solver ]
  Author       [ Je-Wei, Chuang ; Meng-Hung, Chen ]
  Copyright    [ Copyleft(c), LSV, NTUEE, Taiwan ]
****************************************************************************/

#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <iterator>
#include <unordered_map>
#include <unordered_set>
#include <cstdlib>
// self-file
#include "ortools/linear_solver/linear_solver.h"


using namespace std;

// extern vector<int> LSV_ILPCheck(char * pSop, int var_num, int cube_num);

//----------------------------------------------------------------------
//    Type define
//----------------------------------------------------------------------
// Types to hold vector-of-ints (Vi) and vector-of-vector-of-ints (Vvi)
typedef std::vector<int> Vi;
typedef std::vector<Vi> Vvi;

//----------------------------------------------------------------------
//    function definition
//----------------------------------------------------------------------
namespace operations_research 
{
  // recursive algorithm to to produce cart. prod.
  // At any given moment, "me" points to some Vi in the middle of the input data set. 
  //   for int i in *me:
  //      add i to current result
  //      recurse on next "me"
  void cart_product(
    Vvi& rvvi, // final result
    Vi& rvi, // current result
    Vvi::const_iterator me, // current input
    Vvi::const_iterator end) // final input
  {
    if (me == end) 
    {
      // terminal condition of the recursion. We no longer have
      // any input vectors to manipulate. Add the current result (rvi)
      // to the total set of results (rvvi).
      rvvi.push_back(rvi);
      return;
    }
    
    // need an easy name for my vector-of-ints
    const Vi& mevi = *me;
    for (Vi::const_iterator it = mevi.begin() ; it != mevi.end() ; it++)
    {
      // final rvi will look like "a, b, c, ME, d, e, f"
      // At the moment, rvi already has "a, b, c"
      rvi.push_back(*it); // add ME
      cart_product(rvvi, rvi, me+1, end); // add "d, e, f"
      rvi.pop_back(); // clean ME off for next round
    }
  }
  
  void CreateOffsetConstraint(char* pSop, int var_num, int cube_num, MPVariable* const T, vector<MPVariable*>& V, const double infinity, vector<MPConstraint*>& ct_off, std::unique_ptr<MPSolver>& solver)
  {
    // (1) 算共幾種組合 (ac. bd. ad --> 2*2*2 = 8 種)
    // (2) 並建造 onset cube 
    char* pCube; // iterator
    int comb_num = 1;
    Vvi onset_list;
    for (int c = 0 ; c < cube_num ; ++c)
    {
      int temp = 0;
      vector<int> temp_var;
      for (int i = 0 ; i < var_num ; ++i)
      {
        if (pCube[i] != '-') 
        { 
          ++temp; 
          temp_var.push_back(i);
        }
      }
      if (temp != 0) { comb_num *= temp; }
      onset_list.push_back(temp_var);
    }
    strcpy(pCube, "");
    // 列出所有組合 
      // input : [[a, c], [b, d], [a, d]]
      // output : [[a, b, a], [a, b, d], [a, d, a], ..., [c, d, d]]
    Vvi output;
    Vi outputTemp;
    cart_product(output, outputTemp, onset_list.begin(), onset_list.end());
    // refine (1) : 把每個 cube 重複的 element 刪掉 (https://reurl.cc/l95ZxE)
      // input : [[a, b, a], [a, b, d], [a, d, a], ..., [c, d, d]]
      // output : [[a, b], [a, b, d], [a, d], ..., [c, d]]
    for (int i = 0 ; i < output.size() ; ++i)
    {
      sort(output[i].begin(), output[i].end());
      output[i].erase(unique(output[i].begin(), output[i].end()), output[i].end());
    }
    // refine (2) : 把每個被包含的 cube 刪掉 (vector sort 完可用 "==" 比較)
      // input : [[a, b, d], [a, d], [a, c, d], [a, d], [a]]
      // output : [[a]]
      // 先 duplicate 一份 output, 如果有包含的話, 把被包含的那個從 duplicate 中刪掉 (erase ?)
    Vvi ans = output;
    for (int i = 0 ; i < output.size() ; ++i)
    {
      for (int j = 0 ; j < output.size() ; ++j)
      {
        if (output[i] == output[j]) { continue; }
        // 檢查是否包含
        else 
        {
          Vi set_diff;
          Vi::iterator it;
          it = set_difference(output[i].begin(), output[i].end(), output[j].begin(), output[j].end(), set_diff.begin());
          if (output[i].size() == output[j].size() + int(it - set_diff.begin()))
          {
            // output[i] 要被刪掉
            auto iter = std::remove(ans.begin(), ans.end(), output[i]);
            ans.erase(iter, ans.end());
            break;
          }
        }
      }
    }
    // 列出 constraint of offset ("小於 T"可以寫成"小於等於 T - delta", delta = 0.1 ?)
    for (int i = 0 ; i < ans.size() ; ++i)
    {
      string ct_off_name = "ct_off_" + to_string(i);
      // 其實是要小於等於 T-delta
      ct_off.push_back(solver->MakeRowConstraint(-infinity, -0.1, ct_off_name));
    }
    for (int i = 0 ; i < ans.size() ; ++i)
    {
      for (int j = 0 ; j < ans[i].size() ; ++j)
      {
        ct_off[i]->SetCoefficient(V[ans[i][j]], 1);
      }
      ct_off[i]->SetCoefficient(T, -1);
    }
  }
  

  vector<int> LSV_ILPCheck(char * pSop, int var_num, int cube_num)
  {
    // initialize (assume all variables are unate)
    vector<int> ans;
    char* pCube; // iterator
    bool IsNegUnate[100] = {false}; // 不確定可不可以用變數來宣告大小 --> 大小開 var_num

    for (int c = 0 ; c < cube_num ; ++c)
    {
      // Later, we need to set a temp var " y " to subsitute the negation variable " x' "
      for (int i = 0 ; i < var_num ; ++i)
      {
        if (pCube[i] == '0') { IsNegUnate[i] = true; }
      }
    }
    // reset iterator
    strcpy(pCube, "");

    // Declare solver : Create the linear solver with the GLOP backend
    std::unique_ptr<MPSolver> solver(MPSolver::CreateSolver("SCIP"));
    // std::unique_ptr<MPSolver> solver(MPSolver::CreateSolver("GLOP"));
    // if (!solver) { LOG(WARNING) << "SCIP solver unavailable."; return; }
    
    // Create the variables : var_num + Threshold
      // weight >= 0 ; Threshold >= 0
      // MakeIntVar --> 限定解只能是 integer
    const double infinity = solver->infinity();
    MPVariable* const T = solver->MakeIntVar(0.0, infinity, "T");
    vector<MPVariable*> V; // --> 大小開 var_num
    for (int i = 0 ; i < var_num ; ++i)
    {
      string name = "w" + to_string(i);
      V.push_back(solver->MakeIntVar(0.0, infinity, name));
    }

    LOG(INFO) << "Number of variables = " << solver->NumVariables();

    // Create a lineat constraint : onset of each cube
    vector<MPConstraint*> ct_on; // --> 大小開 cube_num
    int idx = 0;
    for (int c = 0 ; c < cube_num ; ++c)
    {
      string ct_on_name = "ct_on_" + to_string(c);
      ct_on.push_back(solver->MakeRowConstraint(0, infinity, ct_on_name));
    }
    for (int c = 0 ; c < cube_num ; ++c)
    {
      for (int i = 0 ; i < var_num ; ++i) 
      {
        if (pCube[i] != '-') { ct_on[c]->SetCoefficient(V[i], 1); }
      }
      ct_on[c]->SetCoefficient(T, -1);
    }
    strcpy(pCube, "");

    // Create a lineat constraint : offset of each cube
      // 暴力法 : 直接爆出所有的"組合" (用 recursive, https://reurl.cc/2Dom5v)
    vector<MPConstraint*> ct_off;
    CreateOffsetConstraint(pSop, var_num, cube_num, T, V, infinity, ct_off, solver);

    LOG(INFO) << "Number of constraints = " << solver->NumConstraints();
    
    // Create the objective function : minimize (w0 + ... + T)
    MPObjective* const objective = solver->MutableObjective();
    objective->SetCoefficient(T, 1);
    for (int i = 0 ; i < var_num ; ++i) { objective->SetCoefficient(V[i], 1); }
    objective->SetMinimization();

    // Solve
    const MPSolver::ResultStatus result_status = solver->Solve();
    // Check that the problem has an optimal solution.
      // 無解 --> result_status = INFEASIBLE
    if ((result_status == MPSolver::OPTIMAL) || (result_status == MPSolver::FEASIBLE))
    {
      // Store result
        // 需修正 : 如果一開始的變數是 negate --> 在最後 weight 要取負號, 且 Threshold 要隨之下修
      double modify_T = 0;
      for (int i = 0 ; i < var_num ; ++i) 
      { 
        double weight_i = V[i]->solution_value();
        if (IsNegUnate[i])
        {
          weight_i *= (-1);
          modify_T += weight_i;
        }
        ans.push_back(weight_i); 
      }
      ans.push_back(T->solution_value() + modify_T);
      
      // Output result
      LOG(INFO) << "Solution: ";
      LOG(INFO) << "Optimal objective value = " << objective->Value();
      for (int i = 0 ; i < var_num ; ++i) { LOG(INFO) << V[i]->name() << " = " << V[i]->solution_value(); }
    }

    return ans;

  }
}

