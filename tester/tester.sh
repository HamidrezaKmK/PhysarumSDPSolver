#!/bin/bash
# ${1} executable file location             e.g. src/main.exe
# ${2} implementation type
# ${3} test file(s) in testSet as regex,   e.g. SDPA/testSet/sdplip/*.in => regex = "sdplip/*.in"
cd ../
mkdir -p out
dir_list=(`ls SDPA/testSet/${3}`) ;
test_directory=(`echo "SDPA/testSet/${3}" | sed 's/[^/]*$//'`) ;
output_directory="out/" ;


for test_list in ${dir_list[*]};
do
test_name=(`echo "$test_list" | awk -F "/" '{print $NF}'`) ;
echo "${1} ${2} $test_directory$test_name"
"${1}" "${2}" < "$test_directory$test_name" > "$output_directory$test_name.out"
done

read -n 1 -r -s -p $'Press enter to continue...\n'