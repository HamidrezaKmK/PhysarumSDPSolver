import numpy as np


def gen_random_symmertic(n):
    A = np.zeros((n, n))
    for i in range(n):
        for j in range(i + 1):
            A[i][j] = A[j][i] = np.random.randint(-20, 20)
    return A


def gen_random_positive_definite(n):
    A = np.zeros((n, n))
    for i in range(n):
        for j in range(n):
            A[i][j] = np.random.randint(20)
    Q, R = np.linalg.qr(A)
    D = np.zeros((n, n))
    for i in range(n):
        D[i][i] = np.random.randint(10) + 1

    return np.dot(Q, np.dot(D, np.transpose(Q)))


def show_matrice(X, n, m_id):
    for i in range(n):
        for j in range(i, n):
            print(m_id, 1, i + 1, j + 1, X[i][j])


def show_SDP_format(C, A, n, m):
    print(m)
    print(1)
    print('{', n, '}', sep='')
    for i in range(m):
        _end = ' '
        if i == m - 1:
            _end = '\n'
        print(np.trace(A[i]), end=_end)

    show_matrice(C, n, 0)
    for i in range(m):
        show_matrice(A[i], n, i + 1)

##print("Choose range for m:")
#from
lm = int(input())
#to
rm = int(input())
m = np.random.randint(low=lm, high=rm + 1)

## Choose range for n:
#from
ln = int(input())
#to
rn = int(input())
n = np.random.randint(low=ln, high=rn + 1)

A = []

for i in range(m):
    A.append(gen_random_symmertic(n))

# """
# Choose between options below for C:\n
# [1] positive definite
# [2] negative definite
# [3] general form
# """
opt = int(input())
if opt == 1:
    C = gen_random_positive_definite(n)
elif opt == 2:
    C = -gen_random_positive_definite(n)
elif opt == 3:
    C = gen_random_symmertic(n)
else:
    C = np.zeros(n, n)

show_SDP_format(C, A, n, m)
