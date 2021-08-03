#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py MRI-ESM2-0 piControl r1i1p1f1 thetao Omon -80 -30 25 50 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/MRI-ESM2-0/piControl/thetao_-80to-30E_25to50N_Omon_MRI-ESM2-0_piControl_r1i1p1f1.nc slurm_files/W_M_thetao_MRI-ESM2-0_piControl_r1i1p1f1.slurm