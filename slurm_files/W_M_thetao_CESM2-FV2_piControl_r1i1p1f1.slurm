#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py CESM2-FV2 piControl r1i1p1f1 thetao Omon -80 -30 25 50 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/CESM2-FV2/piControl/thetao_-80to-30E_25to50N_Omon_CESM2-FV2_piControl_r1i1p1f1.nc slurm_files/W_M_thetao_CESM2-FV2_piControl_r1i1p1f1.slurm