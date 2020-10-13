#!/usr/bin/env bash


cmake .

dir_list=(`ls ../testData/sdplib/*s`);
g++ src/SDPSolver.cpp -O2 -c && g++ src/main.cpp SDPSolver.o -O2 -o main
#./main.exe input.txt 2> /dev/null (or main.exe.exe input.txt 2> NUL)


sleep 5