import numpy as np
from math import inf

eps = 10 ** -8
gap_goal = 10 ** -7


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


def calculate_infeasibility(X, A, b, m):
    infeasibility = -inf
    t = np.min(np.linalg.eigh(X)[0])
    t = max(0, -t)
    infeasibility = max(infeasibility, t)
    for i in range(m):
        infeasibility = max(infeasibility, abs(np.sum(A[i] * X) - b[i]))
    return infeasibility

def vectorize(T):
    # This functions gets a two-dimentional matrix as an input and vectorizes it
    ret = []
    for j in range(T.shape[1]):
        for i in range(T.shape[0]):
            ret.append(T[i][j])
    return np.array(ret)


def is_pos_def(A):
    return np.all(np.linalg.eigvals(A) >= -eps)


def find_best_coefficient(X, Y, left, right, iteration):
    """
    Find largest 'h' that X - hY is positive definite
    """
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
