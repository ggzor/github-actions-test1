#!/usr/bin/env bash

echo "Checking some vars:"
echo "WORKFLOW_VAR='$WORKFLOW_VAR'"
echo "JOB_VAR='$JOB_VAR'"
echo "MATRIX_VAR='$MATRIX_VAR'"
echo "STEP_VAR='$STEP_VAR'"
echo "SECRET_VAR='$SECRET_VAR'"

echo "Generating test artifact..."

printf "
Some generated test data:
MATRIX = %s
SECRET = %s
PWD = %s
" "$MATRIX_VAR" "$SECRET_VAR" "$(pwd)" > test-output.txt

echo "Some environment data:
pwd=$(pwd)
ls -al=
$(ls -al)
"

