#ifndef SDP_SOLVER_DERIVATIVE_
#define SDP_SOLVER_DERIVATIVE_

#include "BaseSDPSolver.h"

class SDPSolverDerivative : public BaseSDPSolver
{
public:
	void input() noexcept override;
	MatrixX calc() noexcept override;

private:
	MatrixX calc_sqrt(MatrixX A) noexcept;
	void standardize_input() noexcept;
	MatrixX R_prime, R_double_prime;
};

#endif
