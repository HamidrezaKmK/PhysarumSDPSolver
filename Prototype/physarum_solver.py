import numpy as np
from tqdm import tqdm
from math import inf
from mat_utils import eps, vectorize, is_pos_def, find_best_coefficient, regularize, BDMatrix
import math

# The following can be used for outputing iteration data
# set the boolean to True
PRINT_SUMMARY = False
# the following is the value of gap we aim to achieve
gap_goal = 10 ** -14


def print_summary(*content):
    if PRINT_SUMMARY:
        print(*content)


def _make_dense(C, X, A):
    # print(C)
    C = C.toarray()
    # print(C)
    # print("---")
    X = X.toarray()
    A_t = []
    for A_i in A:
        # print(A_i)
        A_t.append(A_i.toarray())
        # print("THEN")
        # print(A_t[-1])
        # print("***")
    return C, X, A_t


def transformation_calculator(C, X):
    Sai, W = np.linalg.eigh(C)
    W_rc = []
    rc = 0
    for i in range(C.shape[0]):
        if Sai[i] > eps:
            W_rc.append(W[:, i])
            rc += 1
    W_rc = np.array(W_rc).T

    D = np.linalg.inv(W_rc.T.dot(C).dot(W_rc))
    D = np.diag(D)

    pre = W_rc.dot(np.diag(1 / np.sqrt(D)))
    Sai_pr, W_pr = np.linalg.eigh(pre.T.dot(X).dot(pre))

    V = np.diag(np.sqrt(D)).dot(W_pr)
    U = W.dot(V)

    k = 0
    Lambda_k = []
    U_k = []

    for i in range(rc):
        if Sai_pr[i] > eps:
            k += 1
            Lambda_k.append(Sai_pr[i])
            U_k.append(U[:, i])
    U_k = np.array(U_k).T

    C_k_pinv = U_k.dot(U_k.T)
    X_k = U_k.dot(np.diag(Lambda_k)).dot(U_k.T)

    return C_k_pinv, X_k, U_k, k


def null_calculator(X):
    eig, U = np.linalg.eigh(X)
    U_k = []
    for i in range(X.shape[0]):
        if eig[i] > eps:
            U_k.append(U[:, i])
    return np.array(U_k).T


def physarum_C_iden_modified(C, X, m, n, A, b, iter_count, output_summary=False, output_file=None):
    C, X, A = _make_dense(C, X, A)

    Omega = []
    for i in range(len(A)):
        Omega.append(vectorize(A[i]))
    Omega = np.array(Omega)

    count = 1
    min_gap_seen = inf
    min_trace_seen = inf
    max_symmetry_error = -1

    X_saved = None
    try:
        for _ in tqdm(range(iter_count)):
            u, v = np.linalg.eigh(X)

            # pseudo inverse of R
            R_inv = 0.5 * (np.kron(np.eye(n), X) + np.kron(X, np.eye(n)))
            R_inv = 0.5 * (R_inv + R_inv.T)

            # computing Null space and Image of X
            null_X_T = []
            U_k = []
            for j in range(n):
                if u[j] < 10 ** -16:
                    null_X_T.append(v[:, j].T)
                else:
                    U_k.append(v[:, j].T)
            U_k = np.array(U_k).T

            # The following computes Null space of R and transformation of Null constraints
            if len(null_X_T) != 0:
                O = np.array(null_X_T)
                transformed_constraint_1 = np.kron(O, np.eye(n))
                transformed_constraint_2 = np.kron(np.eye(n), O)
                null_R = np.kron(O, O)

            # The following computes the Transpose of Omega Prime
            Omega_pr_T = []
            for i in range(m):
                Omega_pr_T.append(Omega[i, :])
            for i in range(n * len(null_X_T)):
                Omega_pr_T.append(transformed_constraint_1[i, :])
                Omega_pr_T.append(transformed_constraint_2[i, :])
            Omega_pr_T = np.array(Omega_pr_T)

            # Computing (R+)*(Omega Prime)T and Omega double prime
            W = Omega_pr_T.dot(R_inv)
            Omega_2pr = []
            for i in range(W.shape[0]):
                Omega_2pr.append(W[i, :])
            for i in range(len(null_X_T) ** 2):
                Omega_2pr.append(null_R[i, :])
            Omega_2pr = np.array(Omega_2pr).T

            # Add some zero elements to b for null constraints
            b_new = []
            for j in range(b.shape[0]):
                b_new.append(b[j])
            for _ in range(len(null_X_T * n * 2)):
                b_new.append(0)
            b_new = np.array(b_new).T

            # Computing p_ = [p, p', p"]T and q_vec
            p_ = np.linalg.pinv(Omega_pr_T.dot(Omega_2pr)).dot(b_new)
            q_vec = Omega_2pr.dot(p_)
            p = p_[:m]

            # Computing Q from q_vec
            Q = []
            for i in range(n):
                Q.append([])
                for j in range(n):
                    Q[-1].append(q_vec[i * n + j])
            Q = np.array(Q).T
            max_symmetry_error = max(max_symmetry_error, np.max(np.abs(Q - Q.T)))
            Q = 0.5 * (Q + Q.T)

            # calculate the small 'h' using a binary search
            h = 0.5 * find_best_coefficient(U_k.T.dot(X).dot(U_k), U_k.T.dot(X - Q).dot(U_k), 0, 1, 50)

            # update X
            X = h * Q + (1 - h) * X
            X = 0.5 * (X + X.T)

            min_trace_seen = min(min_trace_seen, X.trace())
            dual_objective = p.T.dot(b)

            tau = find_best_coefficient(np.eye(n), sum(p[i] * A[i] for i in range(m)), 0, 1, 50)
            gap = X.trace() - dual_objective * tau

            if 0 < gap < gap_goal:
                break

            # Calculate the gap between primal and dual
            gap = np.trace(X) - tau * p.transpose().dot(b)
            min_gap_seen = min(min_gap_seen, gap)
            count += 1
            X_saved = X
    except Exception as e:
        output_file.write("---Exception---\n")
        output_file.write(str(e))
        output_file.write("\n--------------\n")

    X = regularize(X_saved)

    if output_summary:
        output_file.write("------------------------------\n")
        output_file.write("----- Last Matrix Values -----\n")
        output_file.write("------------------------------\n")
        output_file.write("X_eq =\n{}\n".format(X))
        u, v = np.linalg.eigh(X)
        output_file.write("Eigenvalues of X\n{}\n".format(u))
        output_file.write("tr(X_eq) = {}\n".format(X.trace()))
        output_file.write("(Dual) y =\n{}\n".format(p.transpose() * tau))
        output_file.write("\"h\" in the last iteration = {}\n".format(h))

        output_file.write("------------------------\n")
        output_file.write("----- Feasibility ------\n")
        output_file.write("------------------------\n")
        output_file.write("Feasibility check:\n")
        feasibility_values = Omega.dot(vectorize(X))
        for i in range(m):
            output_file.write("tr(A_{} * X_eq) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))
        output_file.write("Feasibility check of dual: tau = {}\n".format(tau))

        output_file.write("-----------------------\n")
        output_file.write("----- Optimality ------\n")
        output_file.write("-----------------------\n")
        output_file.write("gap with tau (to make dual feasible) = {}\n".format(gap))
        output_file.write("gap without tau (p may be infeasible) = {}\n".format(np.trace(X) - p.transpose().dot(b)))
        output_file.write("minimum gap seen in iterations = {}\n".format(gap))
    return BDMatrix([X]), tau * p, gap, count, max_symmetry_error


def physarum_C_iden_vanilla(C, X, m, n, A, b, iter_count, output_summary=False, output_file=None):
    """
    Solves the SDP problem written as follows:
    min{tr(X) | Omega. vec(X) = b, X >= 0}
    Where Omega is an m * n^2 matrix where the i'th row represents vec(A_i)^T

    It also solves the dual of this SDP given as:
    max(y^T b | I >= y1 A1 + y2 A2 + ... + ym Am}

    :param X:
    This is the starting point of the physarum dynamics.
    In order for it to work correctly, it should dominate at
    lease one feasible answer.

    :param m:
    The number of linear constraints

    :param n:
    The size of the matrices

    :param Omega:
    An m * n^2 matrix where each row shows one of the linear constraints
    of the SDP

    :param iter_count:
    The maximum number of iterations the solver will make

    :return:
    (X, y) the primal and dual solution of the SDP
    """
    C, X, A = _make_dense(C, X, A)

    Omega = []
    for i in range(len(A)):
        Omega.append(vectorize(A[i]))
    Omega = np.array(Omega)

    count = 1
    min_gap_seen = inf
    min_trace_seen = inf

    save_X = None

    try:
        for _ in tqdm(range(iter_count)):
            w, v = np.linalg.eigh(X)

            # pseudo inverse of R
            R_inv = 0.5 * (np.kron(np.eye(n), X) + np.kron(X, np.eye(n)))
            R_inv = 0.5 * (R_inv + R_inv.T)

            # computing Null space and Image of X
            U_k = []
            for j in range(n):
                if w[j] > 10 ** -16:
                    U_k.append(v[:, j].T)
            U_k = np.array(U_k).T

            # Computing M, p, and Vec(Q)
            L = R_inv.dot(Omega.T)
            p = np.linalg.pinv(Omega.dot(L)).dot(b)
            q_vec = L.dot(p)

            # Computing Q from q_vec
            Q = []
            for i in range(n):
                Q.append([])
                for j in range(n):
                    Q[-1].append(q_vec[i * n + j])
            Q = np.array(Q).T
            Q = 0.5 * (Q + Q.T)

            # calculate the small 'h' using a binary search
            h = max(0.01, 0.5 * find_best_coefficient(U_k.T.dot(X).dot(U_k), U_k.T.dot(X - Q).dot(U_k), 0, 1, 50))

            # update X
            X = h * Q + (1 - h) * X
            X = 0.5 * (X + X.T)

            min_trace_seen = min(min_trace_seen, X.trace())
            dual_objective = p.T.dot(b)

            tau = find_best_coefficient(np.eye(n), sum(p[i] * A[i] for i in range(m)), 0, 1, 50)
            gap = X.trace() - dual_objective * tau

            if 0 < gap < gap_goal:
                break

            # Calculate the gap between primal and dual
            gap = np.trace(X) - tau * p.transpose().dot(b)
            min_gap_seen = min(min_gap_seen, gap)
            count += 1
            save_X = X
    except Exception as e:
        output_file.write("-----Exception occured!\n")
        output_file.write(str(e))
        output_file.write("\n-----Exception occured!\n")

    X = regularize(save_X)

    if output_summary:
        output_file.write("------------------------------\n")
        output_file.write("----- Last Matrix Values -----\n")
        output_file.write("------------------------------\n")
        output_file.write("X_eq =\n{}\n".format(X))
        u, v = np.linalg.eigh(X)
        output_file.write("Eigenvalues of X\n{}\n".format(u))
        output_file.write("tr(X_eq) = {}\n".format(X.trace()))
        output_file.write("(Dual) y =\n{}\n".format(p.transpose() * tau))
        output_file.write("\"h\" in the last iteration = {}\n".format(h))

        output_file.write("------------------------\n")
        output_file.write("----- Feasibility ------\n")
        output_file.write("------------------------\n")
        output_file.write("Feasibility check:\n")
        feasibility_values = Omega.dot(vectorize(X))
        for i in range(m):
            output_file.write("tr(A_{} * X_eq) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))
        output_file.write("Feasibility check of dual: tau = {}\n".format(tau))

        output_file.write("-----------------------\n")
        output_file.write("----- Optimality ------\n")
        output_file.write("-----------------------\n")
        output_file.write("gap with tau (to make dual feasible) = {}\n".format(gap))
        output_file.write("gap without tau (p may be infeasible) = {}\n".format(np.trace(X) - p.transpose().dot(b)))
        output_file.write("minimum gap seen in iterations = {}\n".format(gap))
    return BDMatrix([X]), tau * p, gap, count, _


def physarum_SDC_vanilla(C, X, m, n, A, b, iter_count, output_summary=False, output_file=None):
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

    if output_summary:
        output_file.write("------------------------------\n")
        output_file.write("----- Last Matrix Values -----\n")
        output_file.write("------------------------------\n")
        output_file.write("X_eq =\n{}\n".format(X_k))
        u, v = np.linalg.eigh(X_k)
        output_file.write("Eigenvalues of X\n{}\n".format(u))
        output_file.write("tr(X_eq) = {}\n".format(X_k.trace()))
        output_file.write("\"h\" in the last iteration = {}\n".format(h))

        output_file.write("------------------------\n")
        output_file.write("----- Feasibility ------\n")
        output_file.write("------------------------\n")
        output_file.write("Feasibility check:\n")
        feasibility_values = Omega.dot(vectorize(X_k))
        for i in range(m):
            output_file.write("tr(A_{} * X_eq) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))

    print("H in last iteration:", h)
    print(X_k[n - 1, n - 1])
    return X_k, 0, 0, iterations, 0


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
        D[i,i] = math.sqrt(D[i,i])
    #print(D)
    Psi_prime, W_prime = np.linalg.eigh(D.dot(W_r_C.T.dot(X.dot(W_r_C.dot(D)))))
    Psi_prime = np.diag(Psi_prime)
    Psi_prime = np.flip(Psi_prime, axis=1)
    Psi_prime = np.flip(Psi_prime, axis=0)
    W_prime = np.flip(W_prime, axis=1)
    for i in range(r_C):
        D[i,i] = 1/D[i,i]
    V = D.dot(W_prime)
    U_p1 = W_r_C.dot(V)

    U_p2 = W[:,r_C:]
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

def physarum_hamid_modified(C, X, m, n, A, b, iter_count, output_summary=False, output_file=None, restart_factor=1, h_rate=0.01, epoch_limit=inf):

    epoch_counter = 0
    iterations = 0
    prv_infeasibility = inf
    converged = False
    epoch_counter = min(n, epoch_limit)
    for _ in range(epoch_counter):
        epoch_counter += 1
        U, Lambda, k, r_C = SDC(C, X, n)
        U_tilde = np.linalg.inv(U).T
        X = U[:, :k].dot(Lambda[:k,:k]).dot(U[:,:k].T) * restart_factor
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

            # Calculate infeasibility
            # infeasibility = 0
            # for i in range(m):
            #     infeasibility = max(infeasibility, abs(np.sum(A[i] * X) - b[i]))
            # if prv_infeasibility < 0.001 and infeasibility > prv_infeasibility + 0.001:
            #     print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
            #     print("Answer is becoming infeasible!")
            #     print(prv_infeasibility)
            #     print(infeasibility)
            #     print("H == {}".format(h))
            #     print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
            #     break
            # prv_infeasibility = infeasibility

            if h < eps * eps:
                print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                print("H tiny!")
                print("H == {}".format(h))
                print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

            if np.linalg.norm(X - Q, ord=2) < eps:
                converged = True
                print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                print("X and Q Converged!")
                print("H == {}".format(h))
                print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

            iterations += 1
            X_prv = X
            X = h * Q + (1 - h) * X
            if np.sum(C * X_prv) < np.sum(C * X) - 0.001:
                print("\n[Epoch no.{} Ended!] tr(CX) = {}".format(epoch_counter, np.sum(X * C)))
                print("tr(CX) not changing!")
                print("H == {}".format(h))
                print("lambda_i values:", np.linalg.eigh(X_transformed)[0])
                break

        for i in range(m):
            print("Tr(A{} * X) = {}, b{} = {}".format(i, np.sum(A[i] * X), i, b[i]))
        print("---")
        X_transformed = U_tilde[:, :k].T.dot(X).dot(U_tilde[:, :k])
        eigs, _ = np.linalg.eigh(X_transformed)
        if np.min(eigs) > eps or converged:
            for i in range(m):
                print("tr(A_{} X) = {}, b_{} = {}".format(i, np.sum(A[i] * X), i, b[i]))
            print("H == {}".format(h))
            print("Breaking...")
            break
    print("Answer {}".format(np.sum(C * X)))
    print("Minimum eigenvalue: {}".format(np.min(np.linalg.eigh(X)[0])))
    infeasibility = -min(0, np.min(np.linalg.eigh(X)[0]))
    for i in range(m):
        infeasibility = max(infeasibility, abs(np.sum(A[i] * X) - b[i]))
    return X, 0, 0, iterations, 0, infeasibility

def physarum_SDC_vanilla_modified(C, X, m, n, A, b, iter_count, output_summary=False, output_file=None):
    Omega = []
    for i in range(len(A)):
        Omega.append(vectorize(A[i]))
    Omega = np.array(Omega)

    C_k_pinv = C
    X_k = C
    k = C.shape[0] + 1

    # Preprocess to compute Q efficiently

    iterations = 0

    while iterations < iter_count:
        prev_k = k

        C_k_pinv, X_k, U_k, k = transformation_calculator(C, X_k)

        # Preprocess to compute M efficiently
        M_pre = []
        for i in range(m):
            M_pre.append([])
            for j in range(m):
                if i <= j:
                    M_pre[i].append(A[j].dot(C_k_pinv).dot(A[i]))
                else:
                    M_pre[i].append(M_pre[j][i])

        Q_pre = [[], []]
        for i in range(m):
            Q_pre[0].append(0.5 * C_k_pinv.dot(A[i]))
            Q_pre[1].append(0.5 * A[i].dot(C_k_pinv))

        while iterations < iter_count:
            if iterations % 10 == 0:
                print(iterations)
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

            # print(p)
            # feasibility_values = Omega.dot(vectorize(Q))
            # for i in range(m):
            #     print("tr(A_{} * Q) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))
            # print()

            Q = 0.5 * (Q + Q.T)

            # calculate the small 'h' using a binary search
            U_k = null_calculator(X)
            h = 0.5 * find_best_coefficient(U_k.T.dot(X_k).dot(U_k), U_k.T.dot(X_k - Q).dot(U_k), 0, 1, 50)

            # update X
            X_k = h * Q + (1 - h) * X_k
            X_k = 0.5 * (X_k + X_k.T)

            eig_vals_X = np.linalg.eigvalsh(X_k)
            k_ = 0
            for j in eig_vals_X:
                if j > eps:
                    k_ += 1

            iterations += 1
            if k_ != k or np.max(np.abs(Q - X_k)) < gap_goal:
                break

        if prev_k == k:
            break

    if output_summary:
        output_file.write("------------------------------\n")
        output_file.write("----- Last Matrix Values -----\n")
        output_file.write("------------------------------\n")
        output_file.write("X_eq =\n{}\n".format(X_k))
        u, v = np.linalg.eigh(X_k)
        output_file.write("Eigenvalues of X\n{}\n".format(u))
        output_file.write("tr(X_eq) = {}\n".format(X_k.trace()))
        output_file.write("\"h\" in the last iteration = {}\n".format(h))

        output_file.write("------------------------\n")
        output_file.write("----- Feasibility ------\n")
        output_file.write("------------------------\n")
        output_file.write("Feasibility check:\n")
        feasibility_values = Omega.dot(vectorize(X_k))
        for i in range(m):
            output_file.write("tr(A_{} * X_eq) = {}, b_{} = {}\n".format(i, feasibility_values[i], i, b[i]))

    print("H in last iteration:", h)
    return X_k, 0, 0, iterations, 0
