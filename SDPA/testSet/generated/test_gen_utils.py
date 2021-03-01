import numpy as np


# returns an n*n symmetric matrix with values in range(v1, v2)
def gen_random_symmetric(n, v1=-20, v2=20):
    A = np.zeros((n, n))
    for i in range(n):
        for j in range(i + 1):
            A[i][j] = A[j][i] = np.random.randint(v1, v2)
    return A


# returns an n*n positive definite matrix using Q D Q^T
# D is a diagonal matrix with values in range(1, v2)
# Q is matrix based on QR decomposition of random n*n matrix A with values in range(0, v1)
def gen_random_positive_definite(n, v1=10, v2=10):
    A = np.zeros((n, n))
    for i in range(n):
        for j in range(n):
            A[i][j] = np.random.randint(v1)
    Q, R = np.linalg.qr(A)
    D = np.zeros((n, n))
    for i in range(n):
        D[i][i] = np.random.randint(v2) + 1

    return np.dot(Q, np.dot(D, np.transpose(Q)))


# X is an n*n matrix
# m_id is the id of the matrix (for sdp standard tests)
def print_matrix_sdp_format(X, n, m_id):
    for i in range(n):
        for j in range(i, n):
            print(m_id, 1, i + 1, j + 1, X[i][j])


# C is n*n objective matrix
# A is a list of m constraint matrices
# tr(A_i^T x) = b_i
def print_sdp_test(C, A, b, n, m):
    print(m)
    print(1)
    print('{', n, '}', sep='')
    for i in range(m):
        _end = ' '
        if i == m - 1:
            _end = '\n'
        print(b[i], end=_end)

    print_matrix_sdp_format(C, n, 0)
    for i in range(m):
        print_matrix_sdp_format(A[i], n, i + 1)


# returns a simple random graph with n vertices and at most e edges
# vertices are enumerated one based (i.e. 1, 2, ..., n)
def get_random_graph(n: int, e: int):
    G = np.zeros((n + 1, n + 1))
    for i in range(e):
        u = np.random.randint(low=1, high=n + 1)
        v = np.random.randint(low=1, high=n + 1)
        if u == v:
            continue
        G[u, v] = G[v, u] = 1

    return G


# returns an n*n matrix with all elements equal to zero except elements in array indices
# which has their corresponding value in array values
# e.g. get_matrix(2, [(0, 0), (0, 1)], [1, 2]) -> [[1, 2], [0, 0]]
def get_matrix(n: int, indices, values):
    A = np.zeros((n, n))
    cnt = 0
    for index in indices:
        A[index[0]][index[1]] = values[cnt]
        cnt += 1
    return A
