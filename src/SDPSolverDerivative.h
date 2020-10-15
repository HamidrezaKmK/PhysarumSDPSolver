#ifndef SDP_SOLVER_DERIVATIVE_
#define SDP_SOLVER_DERIVATIVE_

#include "BaseSDPSolver.h"

class SDPSolverDerivative : public BaseSDPSolver
{
public:
	void input() noexcept override;
	MatrixX calc() noexcept override;
};

#endif
