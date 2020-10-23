#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include "BaseSDPSolver.h"

class SDPSolver : public BaseSDPSolver
{
public:
	MatrixX iterate() noexcept override;
};

#endif
