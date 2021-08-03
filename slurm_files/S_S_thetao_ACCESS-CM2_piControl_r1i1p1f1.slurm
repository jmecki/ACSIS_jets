#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py ACCESS-CM2 piControl r1i1p1f1 thetao Omon -60 -10 20 35 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/ACCESS-CM2/piControl/thetao_-60to-10E_20to35N_Omon_ACCESS-CM2_piControl_r1i1p1f1.nc slurm_files/S_S_thetao_ACCESS-CM2_piControl_r1i1p1f1.slurm