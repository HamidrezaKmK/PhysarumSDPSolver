#ifndef SDP_SOLVER_
#define SDP_SOLVER_

#include "BaseSDPSolver.h"
#include "SDPResult.h"

class SDPSolver : public BaseSDPSolver
{
private:
	MatrixX init_w_tilda(size_t matrices_dimension) noexcept;
public:
	SDPResult iterate() noexcept override;

};

#endif
