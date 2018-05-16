. ./expected.sh

DIFF_TOOLS=gs-diff-based-testing

if [ -d $DIFF_TOOLS]; then
  cd $DIFF_TOOLS
  git pull origin master
  cd ..
else
  git clone https://github.com/ucsb-gradescope-tools/${DIFF_TOOLS}.git
fi

. ${DIFF_TOOLS}/RUN-GRADER.sh