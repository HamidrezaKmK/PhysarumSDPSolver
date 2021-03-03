import os
import shutil
import sys

from test_generator import generate_tests
from tester import test, get_cached_tester_query
import subprocess
from termcolor import colored
import enum
import re

class OperatingSystems(enum.Enum):
    WINDOWS = 0
    LINUX = 1
    def __str__(self):
        if self.value == 0:
            return 'Windows'
        elif self.value == 1:
            return 'Linux'
        else:
            return 'Undefined_OS'

class TestFormats(enum.Enum):
    BLOCK_SPARSE = 0
    SIMPLE = 1
    @staticmethod
    def regex_format():
        return ".*\.(dat-s|simple-sdp)$"
    def __str__(self):
        if self.value == 0:
            return 'dat-s'
        elif self.value == 1:
            return 'simple-sdp'
        else:
            return 'Undefined_test_format'

class CLI:
    @staticmethod
    def fancy_print(*strings, item_colors = None):
        # TODO: support for linux
        subprocess.call('CLS', shell=True)

        border_color = 'yellow'
        border = '~'
        maxi = 0
        for s in strings:
            maxi = max(maxi, len(s))

        print(colored(border * (maxi + 6), border_color))
        cnt = 0
        for s in strings:
            middle = s + " " * (maxi - len(s) + 1)
            if item_colors is not None and cnt in item_colors.keys():
                middle = colored(middle, item_colors[cnt])
            if item_colors is not None and (-len(strings) + cnt) in item_colors.keys():
                middle = colored(middle, item_colors[-len(strings) + cnt])
            cnt += 1
            print(colored(border * 2 + " ", border_color) + middle + colored(border * 2, border_color))
        print(colored(border * (maxi + 6), border_color))

    @staticmethod
    def fancy_long_print(*strings):
        border = '~'
        border_color = 'yellow'
        for i in range(3):
            print(colored(border * 50, border_color))
        for s in strings:
            print(s)
        for i in range(3):
            print(colored(border * 50, border_color))

    def __init__(self):
        self.root_dir = ''
        self.user_os = sys.platform
        if self.user_os.lower()[0:3] == 'win':
            self.user_os = OperatingSystems.WINDOWS
        else:
            self.user_os = OperatingSystems.LINUX

    def init(self):
        # TODO: support for linux
        subprocess.call("color 0F", shell=True)
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

        cached_test_query = get_cached_tester_query()

        print_values = (
            '==================================================== SDP Physarum Solver ====================================================',
            '                                       Welcome to SDP Physarum command line interface!                                       ',
            'Choose one of these options:',
            '- Please make sure to build (option [1]) before running the tests',
            '- Selected Operating System: [' + str(self.user_os) + ']',
            'Linux is not supported yet!',
            '[1] Build source code (Developer option)',
            '[2] Add test',
            '[3] View test',
            '[4] Run tests')
        if cached_test_query is not None:
            print_values = print_values + ( '[5] Run cached query',
                                            '        test directory = [' + str(cached_test_query['tests_dir']) + ']',
                                            '        test regex = [' + str(cached_test_query['test_reg']) + ']',
                                            '        implementation_type = [' + str(cached_test_query['implementation_type']) + ']',
                                            '[6] Exit')
        else:
            print_values = print_values + ('[5] Exit', 'No cached queries are available')

        print_values = print_values + (
                                       '                                                                                                       Created by:            ',
                                       '                                                                                                             Hamidreza Kamkari',
                                       '                                                                                                             Keivan Rezaei    ',
                                       '                                                                                                       3-3-2021               ')
        CLI.fancy_print(*print_values, item_colors={0:'yellow', 1:'yellow', -1:'yellow', -2:'yellow', -3:'yellow', -4:'yellow'})
        print("Maximize command line window for better view!")

        query = int(input())

        if query == 1:
            self.build_code()
            self.press_enter_to_continue()
            # TODO: support for linux
            subprocess.call("color 0F", shell=True)
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
        elif 5 <= query <= 6:
            if cached_test_query is not None:
                if query == 5:
                    try:
                        test(**cached_test_query)
                    except:
                        print(colored("ERROR: Test might have been removed!",'red'))
                    self.press_enter_to_continue()
                    self.main()
                else:
                    return
            else:
                if query == 5:
                    return
                else:
                    self.main()
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
                    shutil.rmtree(os.path.join(self.root_dir ,"build"))
                except:
                    print('Creating build directory...')
                print('Please make sure none of your working apps open files in \"build\" directory')
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
        else:
            self.build_code()

    def back_to_main(self):
        self.press_enter_to_continue()

    def press_enter_to_continue(self):
        try:
            input("Press enter to continue...")
        except SyntaxError:
            pass

    def add_tests(self):
        CLI.fancy_print('Enter one of these options',
                        '[1] Add test manually',
                        '[2] Add test with generators',
                        '[3] Go back')
        opt = int(input())
        if opt == 1:
            self.add_manual_tests()
            self.add_tests()
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
                generate_tests(test_set_directory=os.path.join(self.root_dir,"SDPA", "testSet"),folder=folder, prefix_test_name=prefix_test_name, description=description)
                self.back_to_main()
                return
            except:
                print("generating tests not successful")
            self.press_enter_to_continue()
        elif opt == 3:
            return
        else:
            self.add_tests()
        return

    def add_manual_tests(self):
        CLI.fancy_print(
            'To add tests manually, just add them in a folder in SDPA/testSet/\"your_folder_name\"/\"your_test_name.format\"',
            'Tests can be manually added in different formats:',
            '[1] Show the standard format to create \".dat-s\" files',
            '[2] Show the standard format to craete \".simple-sdp\" files',
            '[3] Go back'
        )
        query = int(input())
        if query == 1:
            manual_path = self.root_dir + '/SDPA/FORMAT.dat-s'
            with open(manual_path, 'r') as test_format:
                CLI.fancy_long_print(test_format.read())
                test_format.close()
        elif query == 2:
            # TODO: implement code for simple format
            self.add_tests()
        elif query == 3:
            return
        else:
            self.add_tests()

    def view_test(self):
        CLI.fancy_print('We can show tests in SDPA/testSet',
                        'Enter folder name',
                        'Enter full test name')
        folder = CLI.select_dirs(self.root_dir + "/SDPA/testSet", "Choose one of the test packages below:")
        test_name = CLI.select_dirs(self.root_dir + "/SDPA/testSet/" + folder, "Choose one of the tests below:", TestFormats.regex_format())

        try:
            prev_path = os.getcwd()
            os.chdir(self.root_dir + "/build")
            execute_command = 'SDPSolver.exe tmp_input_summary.txt < ../SDPA/testSet/' + folder + '/' + test_name
            subprocess.call(execute_command, shell=True)
            path = os.getcwd() + '/tmp_input_summary.txt'
            with open(path, 'r') as test:
                CLI.fancy_long_print(test.read())
                test.close()
            os.chdir(prev_path)
        except:
            print('Problem in showing test')

        self.back_to_main()

    def run_tests(self):
        exe_loc = self.root_dir + '/SDPSolver.exe'
        CLI.fancy_print('Enter Implementation type',
                        '[1] Kiarash\'s implementation',
                        '[2] Derivative method (Keivan & Hamidreza)')
        imp_type = input()
        test_folder = CLI.select_dirs(self.root_dir + "/SDPA/testSet", "Select one of the test directories below:")
        CLI.list_dirs(self.root_dir + "/SDPA/testSet/" + test_folder, "Enter test name you wish to run (Regex is also supported e.g. \"*.dat-s\")", TestFormats.regex_format())
        tests_reg = input()
        try:
            try:
                os.mkdir(self.root_dir + "/out")
            except:
                pass
            sv_dir = os.getcwd()
            os.chdir(self.root_dir)
            os.chdir('build')
            executable_path = os.getcwd()
            os.chdir(self.root_dir + '/SDPA/testSet')
            os.chdir(test_folder)
            tests_dir = os.getcwd()
            os.chdir(self.root_dir + "/out")
            output_path = os.getcwd()
            os.chdir(sv_dir)
            test(executable_path=executable_path, tests_dir=tests_dir,
                 output_path=output_path, test_reg=tests_reg, implementation_type=imp_type)
        except:
            print('problem in running tester')

        self.back_to_main()
        return

    @staticmethod
    def list_dirs(parent_dir, msg, constraint_reg=None):
        choices = []
        list_of_dirs = os.listdir(parent_dir)
        choices.append(msg)
        for path in list_of_dirs:
            if constraint_reg == None:
                choices.append(path)
            elif re.match(constraint_reg, path):
                choices.append(path)
        if len(choices) == 1:
            print("No files exist matching the constraint!")
            return
        CLI.fancy_print(*choices)

    @staticmethod
    def select_dirs(parent_dir, msg, constraint_reg = None):
        choices = []
        cnt = 0
        list_of_dirs = []
        for dir in os.listdir(parent_dir):
            if constraint_reg != None:
                if re.match(re.compile(constraint_reg), dir):
                    list_of_dirs.append(dir)
            else:
                list_of_dirs.append(dir)

        choices.append(msg)
        for path in list_of_dirs:
            choices.append('[' + str(cnt + 1) + '] ' + path)
            cnt += 1
        if len(choices) == 1:
            print("No files exist matching the constraint!")
            return
        CLI.fancy_print(*choices)
        try:
            query = int(input())
        except:
            print("Choose a number!")
            return CLI.select_dirs(parent_dir, msg, constraint_reg)

        if 1 <= query <= len(list_of_dirs):
            return list_of_dirs[query - 1]
        else:
            print("Input index not correct!")
            return CLI.select_dirs(parent_dir, msg, constraint_reg)

if __name__ == '__main__':
    cli = CLI()
    cli.init()
