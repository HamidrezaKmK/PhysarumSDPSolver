import numpy as np
from test_gen_utils import get_random_graph, get_matrix, print_sdp_test

'''
This code will produce random tests, based on vertex color relaxation sdp.
# First enter n, number of vertices (e.g. 6)
# Second enter e, number of edges (e.g 8)

Constraints
e + n + 1 constraints
# X_00 = 1 (*)
# for each v
    # 2 * X_vv = X_v0 + X_0v (**)
# for each edge v, w
    # X_0v + X_v0 + X_0w + X_w0 - X_vw - X_wv = 2 (***)
'''


def get_vertex_cover_test(n: int, e: int, description:str):
    G = get_random_graph(n, e)

    A = []
    b = []

    # Constraint *
    A.append(get_matrix(n + 1, [(0, 0)], [1]))
    b.append(1)

    # Constraint **
    for v in range(1, n + 1):
        A.append(get_matrix(n + 1, [(v, v), (0, v), (v, 0)], [2, -1, -1]))
        b.append(0)

    for v in range(1, n + 1):
        for w in range(v + 1, n + 1):
            if G[v, w] == 0:
                continue
            A.append(get_matrix(n + 1, [(0, v), (v, 0), (0, w), (w, 0), (v, w), (w, v)],
                                [1, 1, 1, 1, -1, -1]))
            b.append(2)

    C = -np.identity(n + 1)

    print_sdp_test(C, A, b, n + 1, len(A), description)


if __name__ == '__main__':
    n = int(input())
    e = int(input())

    get_vertex_cover_test(n, e, "Vertex Cover Test")
