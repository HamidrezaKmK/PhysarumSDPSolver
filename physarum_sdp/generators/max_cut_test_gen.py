import random
import numpy as np


def matrix_to_dat_s(C):
    ret = ''
    ret += (str(len(C)) + '\n1\n' + str(len(C)) + '\n')
    ret += ('{' + '+1.0,' * (len(C) - 1) + '+1.0}\n')
    for j in range(len(C)):
        for k in range(j, len(C)):
            if random.random() > 0.5:
                ret += ('0 1 ' + str(j + 1) + ' ' + str(k + 1) + ' ' + str(C[j][k]) + '\n')

    for i in range(len(C)):
        ret += (str(i + 1) + ' 1 ' + str(i + 1) + ' ' + str(i + 1) + ' 1.0\n')

    return ret


def generate_test(n, path):
    C = [[(random.random() * random.randint(-5, 5)) for _ in range(n)] for _ in range(n)]
    ret = matrix_to_dat_s(C)
    f = open(path, 'w')
    f.write(ret)
    f.close()


for i in range(1, 11):
    generate_test(20, 'tests/maxcut/maxcut20-{}.dat-s'.format(i))
    generate_test(50, 'tests/maxcut/maxcut50-{}.dat-s'.format(i))
    generate_test(100, 'tests/maxcut/maxcut100-{}.dat-s'.format(i))
