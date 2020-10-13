#!/bin/bash
# ${1} executable file location             e.g. src/main.exe
# ${2} implementation type
# ${3} test file(s) in testData as regex,   e.g. testData/sdplip/*.in => regex = "sdplip/*.in"
cd ../
mkdir -p out
dir_list=(`ls ${3}`) ;
#src_directory=(`echo "${2}" | sed 's/[^/]*$//'`) ;
test_directory=(`echo "${3}" | sed 's/[^/]*$//'`) ;
test_directory="testData/$test_directory"
output_directory="out/" ;

for test_list in ${dir_list[*]};
do
test_name=(`echo "$test_list" | awk -F "/" '{print $NF}'`) ;
"${1} ${2}" < "$test_directory$test_name" > "$output_directory$test_name.out"
done

read -n 1 -r -s -p $'Press enter to continue...\n'
