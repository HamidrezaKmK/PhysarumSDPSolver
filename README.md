# SDPSolver

## How to compile and run
Just Compile like a normal C++ project:
```bash
g++ src/SDPSolver.cpp -O2 -c && g++ src/main.cpp SDPSolver.o -O2 -o main
./main input.txt 2> /dev/null (or main.exe input.txt 2> NUL)
```

The input matrices are given via the `input.txt` file.
