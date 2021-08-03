#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py CanESM5-CanOE piControl r1i1p2f1 tos Omon -40 -10 10 35 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/CanESM5-CanOE/piControl/tos_-40to-10E_10to35N_Omon_CanESM5-CanOE_piControl_r1i1p2f1.nc slurm_files/W_S_tos_CanESM5-CanOE_piControl_r1i1p2f1.slurm