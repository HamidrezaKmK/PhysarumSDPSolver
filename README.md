# SDPSolver

## How to compile and run

### Pre-requisites
This project uses `Eigen` as libraries to build the code. Be sure to 
download and configure the library before trying to run anything.

For more information and instructions check the
 [guide](https://eigen.tuxfamily.org/dox/GettingStarted.html) out!
 
### Compilation
First you should compile the given sources and create an executable file.
This can be done using the script below:
```bash
g++ src/SDPSolver.cpp -O2 -c && g++ src/SDPSolverDerivative.cpp -O2 -c && g++ src/main.cpp SDPSolver.o SDPSolverDerivative.o -O2 -o main.exe
```


If you have [CMake](https://cmake.org/install/) installed you can build
the project by running the code below in the command line.

```bash
mkdir build
cd build
cmake .. # Maybe you should choose the proper CMake generator.
make
```

This creates an executable `SDPSolver.exe` file in the `bin` directory.

* Note: Be sure to configure the cmake directory of `Eigen` in your system

### Testing the code

Different implementations of the SDP solver is implemented in the `src/` folder.
Different test data are also stored in the `testData` folder that are written in the
standard format; more explanations are available in `testData/FORMAT`.

To run the code you should set up "three" arguments in the bash script below:

1) `EXECUTABLE_FILE_LOCATION`: You shoud enter the executable file location 
as the first argument. Since the executable file is located in `bin/SDPSolver.exe`
you can simply set this value by default

2) `IMPLEMENTATION_METHOD`: The Physarum solver has been implemented in multiple ways.
By entering the second argument you can choose between the following implementation types
to monitor the convergence of the algorithm.
    * `Standard`
    * `Derivative`

3) `TEST_DATA_REGEX`: the test data(s) you are willing to give as an input to the algorithm.
for example by entering `samples/sample\d+.dat-s` you choose all the files `samples/sample1.dat-s`, `samples/sample2.dat-s`, ... 
located in `testData` directory

Run the bash script below after customizing the options above:
 
```bash
tester/tester.sh EXECUTABLE_FILE_LOCATION IMPLEMENTATION_METHOD TEST_DATA_REGEX
```

A sample is shown below (if the executable is located in src/main.exe)

```bash
tester/tester.sh src/main.exe Standard sample\d+.dat-s
```

After running the script above the output files corresponding to each test
will be stored in the `out/` directory i.e. if file `x.dat-s` matches the regex,
it is given to the executable and a file `out/x.dat-s.out` appears containing the standard output
of the code with the given input. 


### Test-data explanation


