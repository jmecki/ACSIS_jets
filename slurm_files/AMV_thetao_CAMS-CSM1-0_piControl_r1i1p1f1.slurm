#!/bin/bash 
#SBATCH -p short-serial 
#SBATCH -o %J.out 
#SBATCH -e %J.err 
#SBATCH --time 2:00:00 

conda activate working 
python ../compute_box_mean_nomask.py CAMS-CSM1-0 piControl r1i1p1f1 thetao Omon -75 0 0 60 /gws/nopw/j04/acsis/jmecking/CMIP6/CMIP6/CAMS-CSM1-0/piControl/thetao_-75to0E_0to60N_Omon_CAMS-CSM1-0_piControl_r1i1p1f1.nc slurm_files/AMV_thetao_CAMS-CSM1-0_piControl_r1i1p1f1.slurm