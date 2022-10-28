#!/bin/bash

for i in `seq 0 50`;do
    job_id=$(printf %03d $i)
    run=${job_id:0:2}
    sample=${job_id:2:1}
    for group_type in "inter_residue" "inter_side" "intra_dimer_even" "intra_dimer_odd" "intra_residue" "intra_whole"; do
        cp $PREFIX_TEST_TEMPLATE/5curp/output/$group_type/${run}_${sample}/conductivity.dat \
           $PREFIX_TEST_TEMPLATE/6analyse/input/$group_type/${run}_${sample}
    done
done
