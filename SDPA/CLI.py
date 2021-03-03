import os
import shutil

from test_generator import generate_tests
import subprocess


class CLI:
    @staticmethod
    def fancy_print(*strings):
        border = '~'
        maxi = 0
        for s in strings:
            maxi = max(maxi, len(s))

        print(border * (maxi + 6))
        for s in strings:
            print(border * 2 + " " + s + " " * (maxi - len(s) + 1) + border * 2)
        print(border * (maxi + 6))

    def __init__(self):
        self.root_dir = ''

    def init(self):
        CLI.fancy_print('SDP CLI')
        self.find_root_dir()
        self.main()

    def find_root_dir(self):
        sv_dir = os.getcwd()
        while not os.path.exists(os.getcwd() + '/.root_indicator'):
            os.chdir('..')
        self.root_dir = os.getcwd()
        os.chdir(sv_dir)

    def main(self):
        CLI.fancy_print('Choose one of these options:',
                        '[1] Build source code (Developer option)',
                        '[2] Add test',
                        '[3] View test',
                        '[4] Run tests',
                        '[5] Exit')

        query = int(input())

        if query == 1:
            self.build_code()
            self.main()
        elif query == 2:
            self.add_tests()
            self.main()
        elif query == 3:
            self.view_test()
            self.main()
        elif query == 4:
            self.run_tests()
            self.main()
        elif query == 5:
            return
        else:
            self.main()

    def build_code(self):
        CLI.fancy_print(
            'Please make sure that you have \"Cmake\" installed on your system',
            'Building options:',
            '[1] MinGW (for windows users)',
            '[2] MinGW with optimizations (for windows users)',
            '[3] Go back'
        )

        query = int(input())

        if 1 <= query <= 2:
            try:
                try:
                    shutil.rmtree(self.root_dir + '/build')
                except:
                    print('Creating build directory...')
                os.mkdir(self.root_dir + '/build')
                sv_dir = os.getcwd()
                os.chdir(self.root_dir + '/build')
                subprocess.call('cmake -G \"MinGW Makefiles\" ..', shell=True)
                make_command = 'mingw32-make'
                if query == 2:
                    make_command += ' -j 8'
                subprocess.call(make_command, shell=True)
                os.chdir(sv_dir)
                print('Build successfull\n\tExecutable created at build/SDPSolver.exe')
            except:
                print('[ERROR] build unsuccessful!')
                print('\tMake sure that \"mingw32-make\" is installed correctly on your computer')
        elif query == 3:
            return

    def back_to_main(self):
        print("----------\nEnter anything to go back!")
        tmp = input()

    def add_tests(self):
        CLI.fancy_print('Enter one of these options',
                        '[1] Add test manually',
                        '[2] Add test with generators',
                        '[3] Go back')
        opt = int(input())
        if opt == 1:
            print('To add tests manually, just add them in a folder in SDPA/testSet/')
            self.back_to_main()
            return
        elif opt == 2:
            CLI.fancy_print('Enter following information in separate lines',
                            'folder name, tests will be generated in SDPA/testSet/folder_name',
                            'prefix name of tests',
                            'description for tests')
            folder = input()
            prefix_test_name = input()
            description = input()

            try:
                generate_tests(folder=folder, prefix_test_name=prefix_test_name, description=description)
                self.back_to_main()
                return
            except:
                print("generating tests not successful")
        elif opt == 3:
            return
        else:
            self.add_tests()
        return

    def view_test(self):
        CLI.fancy_print('We can show tests in SDPA/testSet',
                        'Enter folder name',
                        'Enter full test name')
        folder = input()
        test_name = input()

        try:
            prev_path = os.getcwd()
            os.chdir('../build')
            execute_command = 'SDPSolver.exe tmp_input_summary.txt < ../SDPA/testSet/' + folder + '/' + test_name
            subprocess.call(execute_command, shell=True)
            path = os.getcwd() + '/tmp_input_summary.txt'
            with open(path, 'r') as test:
                CLI.fancy_print(test.read())
                test.close()
            os.chdir(prev_path)
        except:
            print('Problem in showing test')

        self.back_to_main()

    def run_tests(self):
        CLI.fancy_print('Implementation types',
                        '[1] Basic SDP Solver',
                        '[2] Derivative SDP Solver')
        CLI.fancy_print('Enter executable file location e.g. build/main.exe',
                        'Enter Implementation type',
                        'Enter test file(s) in testSet as regex e.g. my_tests/*.dat-s)')
        exe_loc = input()
        imp_type = input()
        tests_loc = input()
        try:
            bash_command = 'tester.sh ' + exe_loc + ' ' + imp_type + ' ' + tests_loc
            subprocess.call(bash_command, shell=True)
        except:
            print('problem in running tester.sh')

        self.back_to_main()
        return


if __name__ == '__main__':
    cli = CLI()
    cli.init()
