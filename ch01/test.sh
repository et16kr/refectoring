#!/bin/bash

node example.js > output.txt
export result=$(diff current.txt output.txt)
if [ -z "${result}" ]; then
    echo "Test Pass"
    cat output.txt
else
    echo "Test Fail"
    echo -e "${result}"
fi
rm output.txt
