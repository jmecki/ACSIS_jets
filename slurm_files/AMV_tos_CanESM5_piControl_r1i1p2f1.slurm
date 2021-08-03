#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py CanESM5 piControl r1i1p2f1 tos Omon -75 0 0 60 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/CanESM5/piControl/tos_-75to0E_0to60N_Omon_CanESM5_piControl_r1i1p2f1.nc slurm_files/AMV_tos_CanESM5_piControl_r1i1p2f1.slurm