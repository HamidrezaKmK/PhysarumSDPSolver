from typing import List, Optional, Tuple

import numpy as np
from yacs.config import CfgNode

from physarum_sdp.matrix_utils.base_matrix import BaseMatrix
from physarum_sdp.solvers.base_solvers import PhysarumSDPSolver


class XkronXSolver(PhysarumSDPSolver):
    def __init__(self, *args, **kwargs):
        super(XkronXSolver, self).__init__(*args, **kwargs)
        self.original_C = self.C
        self.original_linear_conditions = []
        for i in range(self.m):
            self.original_linear_conditions.append(self.linear_conditions[i])

    def initialize(self) -> None:
        # self.X = self.C.pinv()
        self.X = 10 * self.C.eye_like()

    def calc_p_and_xdot(self) -> Tuple[BaseMatrix, Optional[np.array]]:
        # Precompute values of XCX and A_iX
        XCX = self.X @ self.C @ self.X
        precomp = []
        for i in range(self.m):
            precomp.append(self.linear_conditions[i] @ self.X)

        # Calculate L
        L = np.zeros((self.m, self.m))
        for i in range(L.shape[0]):
            for j in range(i + 1):
                L[i, j] = L[j, i] = (precomp[i] * precomp[j]).sum()

        # Calculate bb and solve Lp = bb
        bb = np.zeros(self.m)
        for i in range(self.m):
            bb[i] = (self.linear_conditions[i] * XCX).sum()
        p = np.linalg.solve(L, bb)

        # Calculate Xdot = \sum p_i (X A_i X) - X C X
        Xdot = self.X.zeros_like()
        for i in range(self.m):
            Xdot = Xdot + p[i] * self.X @ self.linear_conditions[i] @ self.X
        Xdot = Xdot - XCX

        return Xdot, p

    def find_h(self, Xdot: BaseMatrix) -> float:
        lo = 0.0
        hi = 1.0
        for _ in range(30):
            mid = (lo + hi) / 2
            cand = self.X + mid * Xdot
            if cand.min_eig() <= 0:
                hi = mid
            else:
                lo = mid
        self.last_h = min(self.solver_cfg.H, lo / 2)
        return self.last_h

    def break_midway(self) -> bool:
        if self.last_h < 1e-12:
            return True
        return False

    def postprocess(self, X: BaseMatrix, p: Optional[np.array]) -> Tuple[BaseMatrix, Optional[np.array]]:
        if self.verbose:
            if self.preprocessing_cfg.AUGMENTATION.HAS_AUGMENTATION:
                print("beta: {}".format(X[self.n-1, self.n-1]))
                X = X.submat(0,0,self.n-1)
            for i in range(self.m):
                print(f"b_{i} = {self.b[i]}\t\ttr(A_{i}X) = {(self.original_linear_conditions[i] * X).sum()}")
            print("---")
        return X, p



