import numpy as np

# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
eps = 10 ** -8


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