import numpy as np


def simple_input():
    """
    Gets input in the simple format

    :return:
    Returns the following
    A : a list of linear constraint n*n matrices
    b : a vector where Tr(A_i X) = b_i
    C : the cost matrix
    n : the size of each of the matrices
    m : the number of constraints
    """
    b = []
    A = []

    shape = int(input("Enter the dimension of matrices: "))
    m = int(input("Enter the number of linear conditions: "))
    print("Enter A_i s as a dense matrix in the following:")
    for i in range(m):
        print("Enter A_{}:".format(i + 1))
        A.append([])
        for j in range(shape):
            inp = list(map(float, input().split()))
            A[-1].append(inp)
        A[-1] = np.array(A[-1])
        A[-1] = (A[-1].T + A[-1]) / 2

    b = [list(map(float, input("Enter a list containint b_i elements with space between them:\n").split()))]
    b = np.array(b).transpose()

    C = []
    print("Enter a positive definite C:")
    for i in range(shape):
        inp = list(map(float, input().split()))
        C.append(inp)
    C = np.array(C)

    return A, b, C, shape, m
