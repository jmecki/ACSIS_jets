#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py MIROC-ES2L piControl r1i1p1f2 tos Omon -75 0 0 60 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/MIROC-ES2L/piControl/tos_-75to0E_0to60N_Omon_MIROC-ES2L_piControl_r1i1p1f2.nc slurm_files/AMV_tos_MIROC-ES2L_piControl_r1i1p1f2.slurm