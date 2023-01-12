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
        # Precompute values of XCX and XA_iX
        XCX = self.X @ self.C @ self.X
        precomp = []
        for i in range(self.m):
            precomp.append(self.X @ self.linear_conditions[i] @ self.X)

        # Calculate L
        L = np.zeros((self.m, self.m))
        for i in range(L.shape[0]):
            for j in range(i + 1):
                L[i, j] = L[j, i] = (self.linear_conditions[i] * precomp[j]).sum()

        # Calculate bb and solve Lp = bb
        bb = np.zeros(self.m)
        for i in range(self.m):
            bb[i] = (self.linear_conditions[i] * XCX).sum() + self.b[i] - (self.linear_conditions[i] * self.X).sum()
        p = np.linalg.solve(L, bb)

        # Calculate Xdot = \sum p_i (X A_i X) - X C X
        Xdot = self.X.zeros_like()
        for i in range(self.m):
            Xdot = Xdot + p[i] * precomp[i]
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
        if self.preprocessing_cfg.AUGMENTATION.HAS_AUGMENTATION:
            if self.verbose:
                print("beta: {}".format(X[self.n-1, self.n-1]))
            X = X.submat(0,0,self.n-1)
        if self.verbose:
            for i in range(self.m):
                print(f"b_{i} = {self.b[i]}\t\ttr(A_{i}X) = {(self.original_linear_conditions[i] * X).sum()}")
            print("---")
        
        infeasibility = -min(0, np.min(np.linalg.eigh(X.content)[0]))
        for i in range(self.m):
            infeasibility = max(infeasibility, abs((self.original_linear_conditions[i] * X).sum() - self.b[i]))
        self.add_output_line(
            "Primal solution:\n{}\nDual solution:\n{}\nTr(CX) = {}\n".format(X, p, self.original_C.dot(X).trace()))
        # I don't think we are actually computing 
        # (or indeed, using) the primal and dual gap, nor the 
        # `max error`.
        self.add_output_line("Primal and dual gap: {}\n".format(0))
        self.add_output_line("Number of iterations: {}\n".format(self.count - 1))
        self.add_output_line("Max error in symmetry of Q: {}\n".format(0))
        self.add_output_line("Maximum h bound: {}\n".format(self.solver_cfg.H))
        self.add_output_line("Restart factor: {}\n".format(self.solver_cfg.RESTART_FACTOR))
        self.add_output_line("Infeasibility: {}\n".format(infeasibility))
        self.add_output_line("Time spent (seconds): {}\n".format(self.get_time_spent()))
        return X, p



