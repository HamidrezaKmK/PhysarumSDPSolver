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
echo "Running $test_directory$test_name with implementation=${2} ..."
"${1}" "${2}" < "$test_directory$test_name" > "$output_directory$test_name.out" 2> "$output_directory$test_name.err"

if [ $? -eq 0 ]; then
    echo
    echo "[DONE] Run successful!"
    echo -e "\tcerr output available at \"$output_directory$test_name.err\"\n"
    echo -e "\tcout output available at \"$output_directory$test_name.out\"\n\n"
else
    echo
    echo "[ERROR]: Run unsuccessful at \"$test_directory$test_name\""
    echo -e "\tFor more information check out \"$output_directory$test_name.err\"\n\n"
fi
done

read -n 1 -r -s -p $'Press enter to continue...\n'