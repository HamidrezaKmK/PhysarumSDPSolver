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

If you are using windows and compilers such as `MinGW` you should be able to run the code below

```
mkdir build
cd build
cmake -G "MinGW Makefiles" ..
mingw32-make
```

* Be sure to delete the `build` file before running again! there may be cached
data from the previous cmake

* You can make the process faster by options such as `make -j 8` or `mingw32-make -j 8`


This creates an executable `SDPSolver.exe` file in the `build` directory.

* Note: Be sure to configure the cmake directory of `Eigen` in your system
for this you **must use cmake** on the `CMakeList` provided on the [Eigen](https://eigen.tuxfamily.org/dox/GettingStarted.html)
 website

### Testing the code

Different implementations of the SDP solver is implemented in the `src/` folder.
Different test data are also stored in the `SDPA/testSet` folder that are written in the
standard format; more explanations are available in `SDPA/FORMAT`.

To run the code you should set up "three" arguments in the bash script below:

1) `EXECUTABLE_FILE_LOCATION`: You shoud enter the executable file location 
as the first argument. Since the executable file is located in `build/SDPSolver.exe`
you can simply set this value by default

2) `IMPLEMENTATION_METHOD_ID`: The Physarum solver has been implemented in multiple ways.
By entering the second argument you can choose between the following implementation types
to monitor the convergence of the algorithm. Use a number to specify which method of implementation you choose
    * `1` : The "Standard" method //TODO: add explanations
    * `2` : The "Derivative" method

3) `TEST_DATA_REGEX`: the test data(s) you are willing to give as an input to the algorithm.
for example by entering `samples/sample*.dat-s` you choose all the files `samples/sample1.dat-s`, `samples/sample2.dat-s`, ... 
located in `testData` directory

Run the bash script below after customizing the fields 1), 2), 3) as explained above:
 
```
tester/tester.sh  1) 2) 3)
```

After running the script above the output files corresponding to each test
will be stored in the `out/` directory i.e. if file `x.dat-s` matches the regex,
it is given to the executable and a file `out/x.dat-s.out` appears containing the standard output
of the code with the given input, also `out/x.dat-s.err` contains the `cerr` outputs after running the code on test set.

A sample is shown below (if the executable is located in `build/SDPSolver.exe`)

```bash
tester/tester.sh build/SDPSolver.exe 2 sample_gen/sample_*.dat-s
```

Another example is shown below in which it is being tested on different test sets.

```bash
tester/tester.sh build/SDPSolver.exe 2 samples/sample*.dat-s
```

![Image](https://github.com/kiarashgl/SDPSolver/blob/master/image/bashScript_samples.JPG)

As you can see some of the test cases contained invalid constraints, you can check out
`out/sample0.dat-s.err` or `out/sample2.dat-s.err` and see the error. For this case
the given C is not negative definite.

### Test-data explanation

The test data used in this project is in the standard [SDPA](http://plato.asu.edu/ftp/sdpa_format.txt) format and is located at
`SDPA/testSet`
many categories of sample input data can be seen there and you can also add your own sample in this directory.

There is also a standard SDPA solver located in `SDPA` which is currently accessible by windows users
in which a solver is located.

By running `SolveTestSet.bat` file all the tests stored in `testSet` will be solved by the standard
solver and their result will be stored next to the input as a `.res` file.
e.g. let's say we have file `sample1.dat-s` then after running ‍`SolverTestSet.bat` 
a file named `sample1.dat-s.res` will be created next to the file containing the result.


The code below "only" works on windows:
```
cd SDPA/windows
SolvetestSet.bat
```

To check whether the implemetation has worked correctly, Simply 
compare `out/testName.dat-s.out` file with the `yMatrix` field in
`testDirectory/testName.dat-s.res`.

### Algorithm
The Physarum solver that is implemented "only" works for tests whit
*Negative Definite* constraint matrices 

// TODO: implement for positive definite "C" matrices

// TODO: give brief explanation for the algorithm