# SDPSolver

## How to compile and run
Just Compile like a normal C++ project. But as the size of the executable file could be large, you should handle this with an assembler flag:
```bash
g++ main.cpp -O2 -o main -m64 -Wa,-mbig-obj
./main (or main.exe)
```

The input matrices are given via the `input.txt` file.
