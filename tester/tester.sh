#!/bin/bash
# ${1} .exe folder,   src/main.exe
# ${2} test folder,   testData/sdplip/*.in
cd ../
mkdir -p out
dir_list=(`ls ${2}`) ;
src_directory=(`echo "${1}" | sed 's/[^/]*$//'`) ;
test_directory=(`echo "${2}" | sed 's/[^/]*$//'`) ;
output_directory="out/" ;

echo $src_directory ;
echo $test_directory ;

g++ --verbose "$1" -O2 -c && g++ "$src_directory/main.cpp" SDPSolver.o -O2 -o main

echo "Done!" ;

for test_list in ${dir_list[*]};
do
   test_name=(`echo "$test_list" | awk -F "/" '{print $NF}'`) ;
   "${src_directory}main" "$test_directory$test_name" > "$output_directory$test_name.out"
done
