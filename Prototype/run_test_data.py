from main import solve_test_list
from pathlib import Path
import os
import pandas as pd

df = pd.read_csv('info.csv')
for i in range(len(df)):
    if df['DONE'][i] == 1:
        continue
    pathname = df['TestSet'][i]
    test_list = []
    for path in Path(os.path.join('tests', pathname)).rglob('*'):
        if len(str(path)) > 6 and str(path)[-6:] == '.dat-s':
            test_list.append(str(path))
    iter_count = df['IterationCount'][i]
    method_number = df['MethodNumber'][i] - 1
    gamma = None if df['Gamma'].isnull()[i] else df['Gamma'][i]
    h_rate = df['h'][i]
    restart_factor = 1 if df['RestartFactor'].isnull()[i] else df['RestartFactor'][i]
    if df['EpochLimit'].isnull()[i]:
        if df['maxcut'].isnull()[i]:
            solve_test_list(test_list, iter_count, method_number, gamma, restart_factor, h_rate)
        else:
            solve_test_list(test_list, iter_count, method_number, gamma, restart_factor, h_rate, max_cut=True)
    else:
        solve_test_list(test_list, iter_count, method_number, gamma, restart_factor, h_rate, int(df['EpochLimit'][i]))
#
# with open('info.txt', 'r') as info_file:
#     lines = info_file.readlines()
#     for line in lines:
#         parts = line.strip().split()
#         if parts[0] == '[DONE]':
#             continue
#         iter_count = int(parts[-2])
#         test_list = []
#         for path in Path(os.path.join('tests', parts[0])).rglob('*'):
#             if len(str(path)) > 6 and str(path)[-6:] == '.dat-s':
#                 test_list.append(str(path))
#
#         if int(parts[-1]) > 2:
#             solve_test_list(test_list, iter_count, int(parts[-1]) - 1)
#         else:
#             solve_test_list(test_list, iter_count, int(parts[-1]) - 1, gamma=0.01)
