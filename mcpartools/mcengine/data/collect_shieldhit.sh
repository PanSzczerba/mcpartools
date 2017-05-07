#!/usr/bin/env bash

# Exit immediately if a simple command exits with a non-zero status.
set -e

INPUT_WILDCARD={output_dir:s}/workspace/job_*/*.bdo
OUTPUT_DIRECTORY={output_dir:s}/output
TRANSPORT_COMMAND=cp

# make output folder
mkdir -p $OUTPUT_DIRECTORY

# copy all binary output files to the same folder
for INPUT_FILE in $INPUT_WILDCARD; do
  $TRANSPORT_COMMAND $INPUT_FILE $OUTPUT_DIRECTORY
done