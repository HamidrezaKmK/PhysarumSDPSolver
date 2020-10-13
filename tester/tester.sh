#!/bin/bash
# ${1} .exe folder,   src/main.exe
# ${2} test folder,   testData/sdplip/*.in
cd ..
mkdir -p out
dirlist=(`ls ${2}`) ;
srcdirectory= (`echo "${2}" | sed 's/[^/]*$//'`) ;
testdirectory=(`echo "${2}" | sed 's/[^/]*$//'`) ;
outputdirectory="out/" ;

g++ "$1" -O2 -c && g++ "$srcdirectory/main.cpp" SDPSolver.o -O2 -o main

for testlist in ${dirlist[*]};
do
	testname=(`echo "$testlist" | awk -F "/" '{print $NF}'`) ;
	"$srcdirectory/main" "$testdirectory$testname" > "$outputdirectory$testname.out"
done


