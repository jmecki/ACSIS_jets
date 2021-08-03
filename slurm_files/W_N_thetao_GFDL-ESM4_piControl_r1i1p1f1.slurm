#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py GFDL-ESM4 piControl r1i1p1f1 thetao Omon -60 -20 45 70 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/GFDL-ESM4/piControl/thetao_-60to-20E_45to70N_Omon_GFDL-ESM4_piControl_r1i1p1f1.nc slurm_files/W_N_thetao_GFDL-ESM4_piControl_r1i1p1f1.slurm