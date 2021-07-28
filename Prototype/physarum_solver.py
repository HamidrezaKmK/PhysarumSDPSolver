import numpy as np
from tqdm import tqdm
from math import inf

# The following can be used for outputing iteration data
# set the boolean to True
PRINT_SUMMARY = False
# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
eps = 10 ** -8
# the following is the value of gap we aim to achieve
gap_goal = 10 ** -14

def print_summary(*content):
    if PRINT_SUMMARY:
        print(*content)


def vectorize(T):
    # This functions gets a two-dimentional matrix as an input and vectorizes it
    ret = []
    for j in range(T.shape[1]):
        for i in range(T.shape[0]):
            ret.append(T[i][j])
    return np.array(ret)


def is_pos_def(A):
    return np.all(np.linalg.eigvals(A) >= -(10 ** -16))


def find_best_coefficient(X, Y, left, right, iteration):
    if iteration == 0:
        return left
    mid = (left + right) / 2
    if is_pos_def(X - mid * Y):
        return find_best_coefficient(X, Y, mid, right, iteration - 1)
    else:
        return find_best_coefficient(X, Y, left, mid, iteration - 1)


def regularize(inp):
    u, v = np.linalg.eigh(inp)
    ret = False
    for x in u:
        if x < 0:
            ret = True
            break
    if not ret:
        return inp
    ret = np.zeros(inp.shape)
    for x, y in zip(u, v.T):
        if x > 10 ** -16:
            s = np.array([y])
            ret += x * (s.T.dot(s))
    return ret


def run_physarum_improved(X, m, n, A, b, iter_count, output_summary=False, output_file=None):

    Omega = []
    for i in range(len(A)):
        Omega.append(vectorize(A[i]))
    Omega = np.array(Omega)

    count = 1
    min_gap_seen = inf
    min_trace_seen = inf

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
                transformed_constraint = np.kron(np.array(null_X_T), np.eye(n))
                null_R = np.kron(np.array(null_X_T), np.array(null_X_T))

            # The following computes the Transpose of Omega Prime
            Omega_pr_T = []
            for i in range(m):
                Omega_pr_T.append(Omega[i, :])
            for i in range(n * len(null_X_T)):
                Omega_pr_T.append(transformed_constraint[i, :])
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
            for _ in range(len(null_X_T * n)):
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
            Q = 0.5 * (Q + Q.T)

            # calculate the small 'h' using a binary search
            h = 0.5 * find_best_coefficient(U_k.T.dot(X).dot(U_k), U_k.T.dot(X - Q).dot(U_k), 0, 1, 50)

            # update X
            X = h * Q + (1 - h) * X
            X = 0.5 * (X + X.T)

            min_trace_seen = min(min_trace_seen, X.trace())
            dual_objective = p.T.dot(b)

            tau = find_best_coefficient(U_k.T.dot(U_k), U_k.T.dot(sum(p[i] * A[i] for i in range(m))).dot(U_k), 0, 1, 50)
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
        output_file.write("Dual sum of p_l A_l:\n")
        Dual = sum(p[i] * A[i] for i in range(m))
        output_file.write(str(Dual))
        w, u = np.linalg.eigh(Dual)
        output_file.write("\nThe eigenvalues of this sum:\n{}\n".format(w))
        output_file.write("The eigenvectors of this sum\n{}\n".format(u))

        output_file.write("-----------------------\n")
        output_file.write("----- Optimality ------\n")
        output_file.write("-----------------------\n")
        output_file.write("gap with tau (to make dual feasible) = {}\n".format(gap))
        output_file.write("gap without tau (p may be infeasible) = {}\n".format(np.trace(X) - p.transpose().dot(b)))
        output_file.write("minimum gap seen in iterations = {}\n".format(gap))
    return X, tau * p, gap, count

def run_physarum(X, m, n, A, b, iter_count, output_summary=False, output_file=None):
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
            p = np.linalg.inv(Omega.dot(L)).dot(b)
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
    return X, tau * p, gap, count
