from main import solve_test_list
from pathlib import Path
import os

with open('info.txt', 'r') as info_file:
    lines = info_file.readlines()
    for line in lines:
        parts = line.strip().split()
        if parts[0] == '[DONE]':
            continue
        iter_count = int(parts[-2])
        test_list = []
        for path in Path(os.path.join('tests', parts[0])).rglob('*'):
            if len(str(path)) > 6 and str(path)[-6:] == '.dat-s':
                test_list.append(str(path))

        if int(parts[-1]) > 2:
            solve_test_list(test_list, iter_count, int(parts[-1]) - 1)
        else:
            solve_test_list(test_list, iter_count, int(parts[-1]) - 1, gamma=0.01)
