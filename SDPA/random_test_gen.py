import numpy as np
from test_gen_utils import print_sdp_test, gen_random_symmetric, gen_random_positive_definite, print_matrix_sdp_format


'''
This code will produce random tests ... (maybe not valid)
# First enter n, dimension of matrices (e.g. 4)
# Second enter m, number of constraints (e.g 2)
# At last enter an option among 1, 2, 3 to determine matrix C
    [1] positive definite
    [2] negative definite
    [3] general form
# """
'''


def get_random_test(n, m, opt, description:str):
    A = []
    b = []
    for i in range(m):
        A.append(gen_random_symmetric(n))

    for i in range(m):
        b.append(np.trace(A[i]))

    if opt == 1:
        C = gen_random_positive_definite(n)
    elif opt == 2:
        C = -gen_random_positive_definite(n)
    elif opt == 3:
        C = gen_random_symmetric(n)
    else:
        C = np.zeros(n, n)

    print_sdp_test(C, A, b, n, m, description)


if __name__ == '__main__':
    n = int(input())
    m = int(input())
    opt = int(input())

    get_random_test(n, m, opt, "Random Test")