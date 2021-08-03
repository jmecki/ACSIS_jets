#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py NorESM2-MM piControl r1i1p1f1 tos Omon -40 -10 10 35 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/NorESM2-MM/piControl/tos_-40to-10E_10to35N_Omon_NorESM2-MM_piControl_r1i1p1f1.nc slurm_files/W_S_tos_NorESM2-MM_piControl_r1i1p1f1.slurm