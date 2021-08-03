#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py TaiESM1 piControl r1i1p1f1 thetao Omon -60 -20 35 50 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/TaiESM1/piControl/thetao_-60to-20E_35to50N_Omon_TaiESM1_piControl_r1i1p1f1.nc slurm_files/S_M_thetao_TaiESM1_piControl_r1i1p1f1.slurm