#ifndef SDP_SOLVER_DERIVATIVE_
#define SDP_SOLVER_DERIVATIVE_

#include "BaseSDPSolver.h"
#include "SDPResult.h"

class SDPSolverDerivative : public BaseSDPSolver
{
protected:
	SDPResult iterate() noexcept override;

private:
	MatrixX init_w_tilda(size_t matrices_dimension) noexcept;
};

#endif
