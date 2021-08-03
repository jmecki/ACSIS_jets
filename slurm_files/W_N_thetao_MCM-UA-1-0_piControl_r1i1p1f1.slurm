#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py MCM-UA-1-0 piControl r1i1p1f1 thetao Omon -60 -20 45 70 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/MCM-UA-1-0/piControl/thetao_-60to-20E_45to70N_Omon_MCM-UA-1-0_piControl_r1i1p1f1.nc slurm_files/W_N_thetao_MCM-UA-1-0_piControl_r1i1p1f1.slurm