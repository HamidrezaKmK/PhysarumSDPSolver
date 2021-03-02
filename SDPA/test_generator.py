import sys

import numpy as np
from random_test_gen import get_random_test
from vertex_cover_test_gen import get_vertex_cover_test
import os

read_me = '''
    # Enter an option (1 or 2) to generate tests
    # [1] with vertex cover generators. then input number of tests, 
        range of n, range of e.
        e.g. 
        10
        8 10
        10 12
    # [2] with random generators. then input number of tests,
        range for n, range for m and the option for tests (among 1, 2, 3)
            [1] positive definite
            [2] negative definite
            [3] general form
        e.g.
        10
        8 10
        4 5
        1
    '''


def generate_tests(folder: str, prefix_test_name: str, description: str):
    print(read_me)

    opt = int(input())
    tests = int(input())

    ln, rn = [int(x) for x in input().split(' ')]
    lm, rm = [int(x) for x in input().split(' ')]

    test_opt = 0

    if opt == 2:
        test_opt = int(input())

    path = os.getcwd() + '\\testSet\\' + folder

    try:
        os.mkdir(path)
    except OSError:
        print("Creation of the test directory %s failed" % path)
    else:
        print("Test folder successfully created")

    original_stdout = sys.stdout

    for i in range(tests):
        n = np.random.randint(low=ln, high=rn + 1)
        m = np.random.randint(low=lm, high=rm + 1)
        name = '\\' + prefix_test_name + str(i) + '.dat-s'
        try:
            with open(path + name, 'w') as f:
                sys.stdout = f
                if opt == 1:
                    get_vertex_cover_test(n, m, description)
                else:
                    get_random_test(n, m, test_opt, description)
                sys.stdout = original_stdout
                print("Test number " + str(i) + " generated successfully")
        except:
            print("Error happened in generating test number " + str(i))
        finally:
            f.close()

    return
