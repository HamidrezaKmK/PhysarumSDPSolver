#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include "BaseSDPSolver.h"
#include "SDPResult.h"

class SDPSolver : public BaseSDPSolver
{
public:
	SDPResult iterate() noexcept override;
};

#endif
