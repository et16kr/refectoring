#!/bin/bash

node example.js > output.txt
export result=$(diff current.txt output.txt)
if [ -z "${result}" ]; then
    echo "Test Pass"
    cat current.txt 
else
    echo "Test Fail"
    echo -e "${result}"
fi
