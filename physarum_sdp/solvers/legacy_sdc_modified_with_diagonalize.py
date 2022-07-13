"""
This is v2 Hamidreza's implementation of the dynamic with modified implementation
to account for approaching the boundaries
"""
import time
from typing import Optional, Tuple, List

import numpy as np
import math
from math import inf

# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
from debugpy._vendored.pydevd._pydev_bundle.pydev_override import overrides
from tqdm import tqdm
from yacs.config import CfgNode

from physarum_sdp.config import METHODS
from physarum_sdp.matrix_utils.block_dense import eps
from physarum_sdp.solvers.base_registry import SOLVER_REGISTRY
from physarum_sdp.solvers.base_solvers import PhysarumSDPSolver
from physarum_sdp.solvers.legacy_solvers import LegacySolver




def SDC(C, X, n):
    Psi, W = np.linalg.eigh(C)
    Psi = np.diag(Psi)
    Psi = np.flip(Psi, axis=1)
    Psi = np.flip(Psi, axis=0)
    W = np.flip(W, axis=1)
    r_C = n
    for i in range(n - 1, -1, -1):
        if Psi[i, i] < eps:
            r_C -= 1
        else:
            break
    W_r_C = W[:, 0:r_C]
    # print(W_r_C.dot(np.eye(3)).dot(W_r_C.T))
    # print("==")
    D = W_r_C.T.dot(C).dot(W_r_C)
    for i in range(r_C):
        D[i, i] = math.sqrt(D[i, i])
    # print(D)
    Psi_prime, W_prime = np.linalg.eigh(D.dot(W_r_C.T.dot(X.dot(W_r_C.dot(D)))))
    Psi_prime = np.diag(Psi_prime)
    Psi_prime = np.flip(Psi_prime, axis=1)
    Psi_prime = np.flip(Psi_prime, axis=0)
    W_prime = np.flip(W_prime, axis=1)
    for i in range(r_C):
        D[i, i] = 1 / D[i, i]
    V = D.dot(W_prime)
    U_p1 = W_r_C.dot(V)

    U_p2 = W[:, r_C:]
    U = np.concatenate((U_p1, U_p2), axis=1)
    Lambda = []
    k = 0
    for i in range(n):
        if i < r_C:
            Lambda.append(Psi_prime[i, i])
            if Psi_prime[i, i] > eps:
                k += 1
        else:
            Lambda.append(0)
    Lambda = np.diag(np.array(Lambda))
    return U, Lambda, k, r_C


def physarum_hamid_modified(C, X, m, n, A, b, iter_count, restart_factor=1,
                            h_rate=0.01, epoch_limit=inf, solver: Optional[PhysarumSDPSolver]=None):
    epoch_counter = 0
    iterations = 0
    prv_infeasibility = inf
    converged = False
    epoch_counter = min(n, epoch_limit)
    for _ in range(epoch_counter):
        epoch_counter += 1
        U, Lambda, k, r_C = SDC(C, X, n)
        U_tilde = np.linalg.inv(U).T
        X = U[:, :k].dot(Lambda[:k, :k]).dot(U[:, :k].T) * restart_factor
        C_dagger_k = U[:, :k].dot(U[:, :k].T)
        M = np.zeros((m, m))
        M_pre = [[0 for _ in range(m)] for _ in range(m)]
        for i in range(m):
            for j in range(m):
                M_pre[i][j] = A[j].dot(C_dagger_k).dot(A[i])
        for _ in tqdm(range(iter_count)):
            for i in range(m):
                for j in range(i, m):
                    M[i, j] = M[j, i] = np.sum(M_pre[i][j] * X)
            p = np.linalg.pinv(M).dot(b)
            Q = np.zeros((n, n))
            for i in range(m):
                Q += p[i] * C_dagger_k.dot(A[i]).dot(X)
            Q = (Q + Q.T) / 2

            ## Calculate h
            Q_transformed = U_tilde[:, :k].T.dot(Q).dot(U_tilde[:, :k])
            X_transformed = U_tilde[:, :k].T.dot(X).dot(U_tilde[:, :k])
            eigs, V = np.linalg.eigh(X_transformed)
            eigs[eigs < eps] = eps
            X_transformed_sqrt = V.dot(np.diag(1 / np.sqrt(eigs))).dot(V.T)
            h_bound = 1 / (1 - np.linalg.eigh(X_transformed_sqrt.dot(Q_transformed).dot(X_transformed_sqrt))[0][0])
            h_bound = max(0, h_bound)
            h = min(h_rate, 0.5 * h_bound)

            if h < eps * eps:
                if solver.verbose:
                    print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                    print("H tiny!")
                    print("H == {}".format(h))
                    print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

            if np.linalg.norm(X - Q, ord=2) < eps:
                converged = True
                if solver.verbose:
                    print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                    print("X and Q Converged!")
                    print("H == {}".format(h))
                    print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

            iterations += 1
            X_prv = X
            X = h * Q + (1 - h) * X
            if np.sum(C * X_prv) < np.sum(C * X) - 0.001:
                if solver.verbose:
                    print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                    print("tr(CX) not changing!")
                    print("H == {}".format(h))
                    print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

        if solver.verbose:
            for i in range(m):
                print("Tr(A{} * X) = {}, b{} = {}".format(i, np.sum(A[i] * X), i, b[i]))
            print("---")
        X_transformed = U_tilde[:, :k].T.dot(X).dot(U_tilde[:, :k])
        eigs, _ = np.linalg.eigh(X_transformed)
        if solver.verbose:
            if np.min(eigs) > eps or converged:
                for i in range(m):
                    print("tr(A_{} X) = {}, b_{} = {}".format(i, np.sum(A[i] * X), i, b[i]))
                print("H == {}".format(h))
                print("Breaking...")
                break
    if solver.verbose:
        print("Answer {}".format(np.sum(C * X)))
        print("Minimum eigenvalue: {}".format(np.min(np.linalg.eigh(X)[0])))
    infeasibility = -min(0, np.min(np.linalg.eigh(X)[0]))
    for i in range(m):
        infeasibility = max(infeasibility, abs(np.sum(A[i] * X) - b[i]))
    return X, 0, 0, iterations, 0, infeasibility


@SOLVER_REGISTRY.register(METHODS.LEGACY_SDC_MODIFIED.__str__())
def build_solver(cfg: CfgNode, linear_conditions, b, C):
    return LegacySolver(cfg, linear_conditions, b, C, legacy_function=physarum_hamid_modified)
