from math import inf
from typing import Optional

import numpy as np
from tqdm import tqdm
from physarum_sdp.solvers.base_solvers import PhysarumSDPSolver
from physarum_sdp.solvers.legacy.legacy_utils import vectorize, transformation_calculator, null_calculator, \
    find_best_coefficient, gap_goal, calculate_infeasibility


def physarum_SDC_vanilla(C, X, m, n, A, b, iter_count, restart_factor=1,
                         h_rate=0.01, epoch_limit=inf, solver: Optional[PhysarumSDPSolver] = None):
    # C, X, A = _make_dense(C, X, A)

    Omega = []
    for i in range(len(A)):
        Omega.append(vectorize(A[i]))
    Omega = np.array(Omega)

    C_k_pinv, X_k, _, _ = transformation_calculator(C, X)

    iterations = 0

    # Preprocess to compute M efficiently
    M_pre = []
    for i in range(m):
        M_pre.append([])
        for j in range(m):
            if i <= j:
                M_pre[i].append(A[j].dot(C_k_pinv).dot(A[i]))
            else:
                M_pre[i].append(M_pre[j][i])

    # Preprocess to compute Q efficiently
    Q_pre = [[], []]
    for i in range(m):
        Q_pre[0].append(0.5 * C_k_pinv.dot(A[i]))
        Q_pre[1].append(0.5 * A[i].dot(C_k_pinv))

    for _ in tqdm(range(iter_count)):
        M = []
        for i in range(m):
            M.append([])
            for j in range(m):
                if i <= j:
                    M[i].append(np.sum(M_pre[i][j] * X_k))
                else:
                    M[i].append(M[j][i])
        M = np.array(M)
        p = np.linalg.pinv(M).dot(b)

        Q = np.sum(p[i] * (Q_pre[0][i].dot(X_k) + X_k.dot(Q_pre[1][i])) for i in range(m))
        Q = 0.5 * (Q + Q.T)

        # calculate the small 'h' using a binary search
        U_k = null_calculator(X_k)
        h = 0.5 * find_best_coefficient(U_k.T.dot(X_k).dot(U_k), U_k.T.dot(X_k - Q).dot(U_k), 0, 1, 50)

        # update X
        X_k = h * Q + (1 - h) * X_k
        X_k = 0.5 * (X_k + X_k.T)

        if np.max(np.abs(Q - X_k)) < gap_goal:
            break

        iterations += 1

    solver.add_output_line("------------------------------\n")
    solver.add_output_line("----- Last Matrix Values -----\n")
    solver.add_output_line("------------------------------\n")
    solver.add_output_line("X_eq =\n{}\n".format(X_k))
    u, v = np.linalg.eigh(X_k)
    solver.add_output_line("Eigenvalues of X\n{}\n".format(u))
    solver.add_output_line("tr(X_eq) = {}\n".format(X_k.trace()))
    solver.add_output_line("\"h\" in the last iteration = {}\n".format(h))

    solver.add_output_line("------------------------\n")
    solver.add_output_line("----- Feasibility ------\n")
    solver.add_output_line("------------------------\n")
    solver.add_output_line("Feasibility check:\n")
    feasibility_values = Omega.dot(vectorize(X_k))
    for i in range(m):
        solver.add_output_line("tr(A_{} * X_eq) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))

    if solver.verbose:
        print("H in last iteration:", h)
        print(X_k[n - 1, n - 1])
    return X_k, 0, 0, iterations, 0, calculate_infeasibility(X, A, b, m)


