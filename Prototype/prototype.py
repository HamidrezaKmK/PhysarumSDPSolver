from math import inf
import numpy as np
import sympy
import scipy.linalg as splinalg
from tqdm import tqdm

# "eps" the epsilon that is used in iterations for finding independent subset
# it is also used as a threshold to consider an eigenvalue to be zero
eps = 10 ** -8
# the following is the value of gap we aim to achieve
gap_goal = 10 ** -5

# The following can be used for outputing iteration data
# set the boolean to True
PRINT_SUMMARY = False
def print_summary(*content):
    if PRINT_SUMMARY:
        print(*content)

def vectorize(T):
    # This functions gets a two-dimentional matrix as an input and vectorizes it
    ret = []
    for j in range(T.shape[1]):
        for i in range(T.shape[0]):
            ret.append(T[i][j])
    return np.array(ret).transpose()

b = []
A = []
Omega = []
X = []

shape = int(input("Enter the dimension of matrices: "))
m = int(input("Enter the number of linear conditions: "))
print("Enter A_i s as a dense matrix in the following:")
for i in range(m):
    print("Enter A_{}:".format(i + 1))
    A.append([])
    for j in range(shape):
        inp = list(map(int, input().split()))
        A[-1].append(inp)
    A[-1] = np.array(A[-1])
    Omega.append(vectorize(A[-1]))

Omega = np.array(Omega)
b = [list(map(int, input("Enter a list containint b_i elements with space between them:\n").split()))]
b = np.array(b).transpose()

start = int(input("X(0) = B * I, Enter B : "))
iter_count = int(input("Enter iteration count: "))

X = start * np.eye(shape)


def is_pos_def(A):
    return np.all(np.linalg.eigvals(A) >= 0)


def find_best_coefficient(X, Y, left, right, iteration):
    if iteration == 0:
        return left
    mid = (left + right) / 2
    if is_pos_def(X - mid * Y):
        return find_best_coefficient(X, Y, mid, right, iteration - 1)
    else:
        return find_best_coefficient(X, Y, left, mid, iteration - 1)


def regularize(X):
    ret = np.zeros((X.shape[0], X.shape[0]))
    w, v = np.linalg.eigh(X)
    for i in range(len(w)):
        if np.abs(w[i]) > eps:
            vec = v[:, i:i + 1]
            ret += w[i] * vec.dot(vec.T)
        else:
            w[i] = 0
    return ret, w, v


def independent_cols(vectors):
    ret = [0]
    s = vectors[:, 0]
    basis = [s / np.linalg.norm(s, ord=2)]
    for i in range(1, vectors.shape[1]):
        s = vectors[:, i]
        s = s / np.linalg.norm(s, ord = 2)
        s = s - sum(s.dot(j) * j for j in basis)
        norm = np.linalg.norm(s, ord=2)
        #print("norm = {}, s = {}".format(norm, s))
        if norm > 10**-6:
            s = s / norm
            basis.append(s)
            ret.append(i)
    return ret

def SDP_update():
    global X, m, shape, Omega, A
    count = 1
    min_gap_seen = inf
    min_trace_seen = inf

    for rp in tqdm(range(iter_count)):
        
        # Calculate the eigendecomposition of X and get rid of
        # the small eigenvalues,
        # eigenvalues = eigenvalues of X
        # U = orthonormal matrix
        # ind = binary vector with '1' is where the respective eigenvalue is not zero
        X, eigenvalues, U = regularize(X)
        ind = []
        for i in eigenvalues:
            if i > eps:
                ind.append(True)
            else:
                ind.append(False)
        # U_k = An n*k matrix reduced to the respective columns of non-zero eigenvectors
        U_k = U[:, ind]
        
        diff = abs(np.linalg.norm(U.T.dot(X).dot(U), ord=2)  - np.linalg.norm(U_k.T.dot(X).dot(U_k), ord = 2))
        if diff > 10**-3:
            input("[ERROR] the cut off eigenvalues are making trouble!")
            
        # Create a matrix "Omega_Tilde" whose 'i'th column is "U_k^T A_i U_k"
        # Then calculate a maximal linearly independent subset of columns of Omega_tilde
        Omega_tilde = np.kron(U_k.T, U_k.T).dot(Omega.T)
        indexes = independent_cols(Omega_tilde)
        
        # Create the M matrix from formula "M_{i,j} = tr(U_k U_k^T A_i X A_j) = M_{j,i}"
        M = []
        u = U_k.dot(U_k.T)
        for i in range(len(indexes)):
            M.append([])
            for j in range(len(indexes)):
                if j >= i:
                    M[-1].append(u.dot(A[indexes[i]]).dot(X).dot(A[indexes[j]]).trace())
                else:
                    M[-1].append(M[j][i])
        M = np.array(M)
        
        # Solve Mp = b_I where b_I is the b vector reduced to that maximal subset of independent A_i values
        b_I = b[indexes, :]
        L, D, perm = splinalg.ldl(M)
        p = splinalg.solve_triangular(L[perm, :], b_I[perm], lower=True)
        p = np.linalg.inv(D).dot(p)
        p = splinalg.solve_triangular(L[perm, :].T, p, lower=False)
        
        # calculate respective dual
        y = [[0] for i in range(m)]
        for i, ind in enumerate(indexes):
            y[ind] = [p[i,0]]
        y = np.array(y)
           
        # calculate Q matrix
        T = sum([y[i,0] * A[i] for i in range(m)])
        Q = 0.5 * (u.dot(T).dot(X) + X.dot(T).dot(u))
        Q = (Q + Q.T) / 2
        
        # calculate the small 'h' using a binary search
        h = (shape ** -2) * find_best_coefficient(X, X - Q, 0, 1, 50)
        if h < 10**-17:
            print("\n[Break] \"h\" became tiny!")
            break
        # Update X
        X = h * Q + (1 - h) * X
        
        min_trace_seen = min(min_trace_seen, X.trace())
        # Find the largest coefficient tau between [0, 1] which makes p dual feasible
        tau = find_best_coefficient(np.eye(shape), T, 0, 1, 50)
        # Calculate the gap between primal and dual
        gap = np.trace(X) - tau * y.transpose().dot(b)
        min_gap_seen = min(min_gap_seen, gap)
        if gap < gap_goal:
            print("\n[Success] \"gap\" became tiny!") 
            break
        count += 1
    
    print("------------------------------")
    print("----- Last Matrix Values -----")
    print("------------------------------")
    print("X_eq =\n", X)
    print("Eigenvalues zero or not = ", ind)
    print("M_eq =\n", M)
    print("tr(X_eq) =", X.trace())
    print("(Dual) y =\n", y.transpose())
    print("\"h\" in the last iteration = ", h)

    
    print("------------------------")
    print("----- Feasibility ------")
    print("------------------------")
    print("Feasibility check:")
    for i in range(m):
        print("tr(A_{} * X_eq) = {}, b_{} = {}".format(i, A[i].dot(X).trace(), i, b[i, 0]))
    print("Feasibility check of dual: tau =", tau)
    
    print("-----------------------")
    print("----- Optimality ------")
    print("-----------------------")
    print("gap with tau (to make dual feasible) =", gap)
    print("gap without tau (p may be infeasible) =", np.trace(X) - y.transpose().dot(b))
    print("minimum gap seen in iterations = ", gap)
    

SDP_update()
