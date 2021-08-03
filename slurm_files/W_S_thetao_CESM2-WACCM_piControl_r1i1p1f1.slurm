#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py CESM2-WACCM piControl r1i1p1f1 thetao Omon -40 -10 10 35 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/CESM2-WACCM/piControl/thetao_-40to-10E_10to35N_Omon_CESM2-WACCM_piControl_r1i1p1f1.nc slurm_files/W_S_thetao_CESM2-WACCM_piControl_r1i1p1f1.slurm