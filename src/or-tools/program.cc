#include "ortools/linear_solver/linear_solver.h"

namespace operations_research {
void BasicExample() {
  // Create the linear solver with the GLOP backend.
  std::unique_ptr<MPSolver> solver(MPSolver::CreateSolver("GLOP"));

  // Create the variables x and y.
    // 0 <= x <= 1 ; 0 <= y <= 2
  MPVariable* const x = solver->MakeNumVar(0.0, 1, "x");
  MPVariable* const y = solver->MakeNumVar(0.0, 2, "y");

  LOG(INFO) << "Number of variables = " << solver->NumVariables();

  // Create a linear constraint, 0 <= x + y <= 2.
    // make it 無解 --> 4 <= x + y <= 5
  MPConstraint* const ct = solver->MakeRowConstraint(4.0, 5.0, "ct");
  ct->SetCoefficient(x, 1);
  ct->SetCoefficient(y, 1);

  LOG(INFO) << "Number of constraints = " << solver->NumConstraints();

  // Create the objective function, 3 * x + y.
  MPObjective* const objective = solver->MutableObjective();
  objective->SetCoefficient(x, 3);
  objective->SetCoefficient(y, 1);
  objective->SetMaximization();

  const MPSolver::ResultStatus result_status = solver->Solve();

  // Check that the problem has an optimal solution.
  int ans = 0;
  if (result_status == MPSolver::INFEASIBLE) 
  { 
    // LOG(FATAL) << "The problem does not have solution!"; 
    ans = 1;
  }
  // solver->Solve();
  LOG(INFO) << "dddddddddddddddddd ans = " << ans;

  LOG(INFO) << "Solution:" << std::endl;
  LOG(INFO) << "Objective value = " << objective->Value();
  LOG(INFO) << "x = " << x->solution_value();
  LOG(INFO) << "y = " << y->solution_value();
}
}  // namespace operations_research

int main() {
  operations_research::BasicExample();
  return EXIT_SUCCESS;
}