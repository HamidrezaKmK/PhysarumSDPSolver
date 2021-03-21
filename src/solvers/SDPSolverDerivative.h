#ifndef SDP_SOLVER_DERIVATIVE_
#define SDP_SOLVER_DERIVATIVE_

#include "SDPResult.h"
#include "IdentityCSDPSolver.h"

class SDPSolverDerivative : public IdentityCSDPSolver
{
protected:
	SDPResult iterate() noexcept override;

private:
	MatrixX init_w_tilda(size_t matrices_dimension) noexcept;
};

#endif
