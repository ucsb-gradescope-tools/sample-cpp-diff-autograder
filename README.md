A sample C++ autograder repo to show how diff-based autograding works. The corresponding assignment can be found at https://github.com/ucsb-gradescope-tools/sample-cpp-assignment.

## Components

### EXECUTION-FILES

Any extra files (e.g. a makefile) that should be in the same directory as the student submission while the submission is being built or while it is running. In this repo, the EXECUTION-FILES directory has the same contents as the provided-files directory in the [assignment repo](https://github.com/ucsb-gradescope-tools/sample-cpp-assignment).

### REFERENCE-SOLUTION

A reference solution which will be used to generate the expected outcome for all tests. Like student solutions, this solution will be run with all files from EXECUTION-FILES in the same directory.

### MAKE-REFERENCE<i></i>.sh

A bash script that creates the expected test output using the reference solution. **Leave this unchanged when creating your own autograder.**

### apt-get<i></i>.sh
A bash script for installing any necessary dependencies for the assignment, e.g. g++.

### diffs<i></i>.sh

A bash script describing the tests to be run. See [this page](https://github.com/ucsb-gradescope-tools/gs-diff-based-testing/blob/master/README.md) for further documentation.

### grade<i></i>.sh

A bash script for generating the results of the student submission. At the top of this file, you must specify what student files should be copied from `/autograder/submission` for testing. For example, the `grade.sh` in this repo begins with:

> cp /autograder/submission/helloWorld.cpp .
> cp /autograder/submission/helloStderr.cpp .

etc.