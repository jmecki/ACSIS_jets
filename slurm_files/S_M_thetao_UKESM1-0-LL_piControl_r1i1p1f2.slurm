#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py UKESM1-0-LL piControl r1i1p1f2 thetao Omon -60 -20 35 50 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/UKESM1-0-LL/piControl/thetao_-60to-20E_35to50N_Omon_UKESM1-0-LL_piControl_r1i1p1f2.nc slurm_files/S_M_thetao_UKESM1-0-LL_piControl_r1i1p1f2.slurm