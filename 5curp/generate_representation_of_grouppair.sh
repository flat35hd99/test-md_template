#!/bin/bash

module purge

if [[ "$(hostname)" =~ flow ]];then
    source $PREFIX_TEST_TEMPLATE/util/load_pinter
else
    source $PREFIX_TEST_TEMPLATE/util/load_pinter_ims
fi

set -eu

cd $PREFIX_TEST_TEMPLATE/5curp

if [ -e group_pair/ ]; then mkdir group_pair/; fi

for group_type in "residue" "side"; do
    pinter -i $(find output/$group_type -type f -name group_pair_original.dat) -o output/group_pair/inter_${group_type}.dat
done
