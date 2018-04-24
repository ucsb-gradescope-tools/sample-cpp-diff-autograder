#!/bin/sh

cp /autograder/submission/change.cpp .
cp /autograder/submission/calculate.cpp .

if [ -d EXECUTION-FILES ]; then   
    cp -v EXECUTION-FILES/* .
fi

if [ -d BUILD-FILES ]; then   
    cp -v BUILD-FILES/* .
fi

make clean
make 

rm -f results.json
DIFF_TOOLS=gs-diff-based-testing
${DIFF_TOOLS}/grade-diffs.py diffs.sh 

if [ -d /autograder/results ]; then
    cp -v results.json /autograder/results/results.json
fi




