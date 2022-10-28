#!/bin/bash

run_start=$1
run_end=$2

pjsub -N yd_3_${run_start}_${run_end} \
  --bulk --sparam ${run_start}-${run_end} \
  $PREFIX_TEST_TEMPLATE/3sampling/job.sh
