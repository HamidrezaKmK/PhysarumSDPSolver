import os
from pathlib import Path
import subprocess

def test(executable_path, tests_dir, output_path, test_reg, implementation_type):
    sv_dir = os.getcwd()
    os.chdir(tests_dir)
    tests_dir = os.getcwd()
    pathlist = Path(tests_dir).rglob(test_reg)
    #print(type(pathlist))
    os.chdir(executable_path)
    for path in pathlist:
        path_in_str = str(path)
        testname = os.path.basename(path_in_str)
        print("[Running...] [" + testname + "] with [implementation = " + implementation_type + "] ...")
        # TODO: make compatible with linux
        iteration_summary_address = os.path.join(output_path, testname) + "-iteration-summary.txt"
        input_summary_address = os.path.join(output_path, testname) + "-summary-input.txt"
        err_address = os.path.join(output_path, testname) + ".err"
        out_address = os.path.join(output_path, testname) + ".out"
        try:
            command = ("SDPSolver.exe " + str(implementation_type) + " " + input_summary_address + " " +
                        iteration_summary_address + " < " + path_in_str + " > " +
                        out_address + " 2> " + err_address)
            subprocess.call(command, shell=True)
            print("Results:")
            with open(out_address, 'r') as results:
                print("========== OUTPUT FILE ==========")
                print(results.read())
                print("---------------------------------")
                print("for more information checkout:")
                print("\t" + iteration_summary_address)
                print("\t" + input_summary_address)
                print("\t" + err_address)
                print("=================================")
                results.close()

        except subprocess.CalledProcessError:
            print("ERROR: On test " + testname + " did not execute successfully!")
            print("\tFor more information check out: " + err_address)
    os.chdir(sv_dir)