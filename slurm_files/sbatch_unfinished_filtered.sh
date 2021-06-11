#!/bin/bash

set -ex


FILES=(`ls *MIROC*.slurm`)

NF=${#FILES[*]}

for ff in `seq 0 $(($NF-1))`
do
  FILE=${FILES[$ff]}
  # Launch job on LOTUS
  sbatch ${FILE}
done

exit
