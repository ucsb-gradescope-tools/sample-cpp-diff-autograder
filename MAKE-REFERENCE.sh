#!/usr/bin/env bash

echo "This script will make the reference output"
echo "Downloading the Gradescope gs-diff-based-testing tools"

git clone https://github.com/ucsb-gradescope-tools/gs-diff-based-testing.git
cd gs-diff-based-testing
git pull origin master
cd ..
pip3 install jsonschema

DIFF_TOOLS=../gs-diff-based-testing

cd REFERENCE-SOLUTION

if [ -d ../EXECUTION-FILES ]; then   
    cp -v ../EXECUTION-FILES/* .
fi

if [ -d ../BUILD-FILES ]; then   
    cp -v ../BUILD-FILES/* .
fi

make clean
make 

${DIFF_TOOLS}/grade-diffs.py -r ../diffs.sh 


