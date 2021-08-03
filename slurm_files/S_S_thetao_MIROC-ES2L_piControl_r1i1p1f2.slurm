#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py MIROC-ES2L piControl r1i1p1f2 thetao Omon -60 -10 20 35 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/MIROC-ES2L/piControl/thetao_-60to-10E_20to35N_Omon_MIROC-ES2L_piControl_r1i1p1f2.nc slurm_files/S_S_thetao_MIROC-ES2L_piControl_r1i1p1f2.slurm