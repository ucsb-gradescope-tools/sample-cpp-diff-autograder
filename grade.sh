#!/bin/sh

cp /autograder/submission/countToN.cpp .
cp /autograder/submission/helloFile.cpp .
cp /autograder/submission/helloWorld.cpp .
cp /autograder/submission/helloStderr.cpp .
cp /autograder/submission/readFile.cpp .
cp /autograder/submission/readStdin.cpp .

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




