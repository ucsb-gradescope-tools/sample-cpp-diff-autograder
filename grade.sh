. ./expected.sh

DIFF_TOOLS=gs-diff-based-testing

if [ -d $DIFF_TOOLS ]; then
  cd $DIFF_TOOLS
  git fetch origin factor-out-expected
  git checkout factor-out-expected
  git pull origin factor-out-expected
  cd ..
else
  git clone https://github.com/ucsb-gradescope-tools/${DIFF_TOOLS}.git
  cd $DIFF_TOOLS
  git checkout factor-out-expected
  cd ..
fi

. ${DIFF_TOOLS}/RUN-GRADER.sh