#!/usr/bin/env bash
#PBS -P ge3
#PBS -q express
#PBS -l walltime=00:30:00,mem=20GB,ncpus=1,jobfs=20GB
#PBS -l wd

module rm intel-fc intel-cc
module load python/2.7.6
module load python/2.7.6-matplotlib
module load gdal/1.11.1-python
# the python command needs full path of the python script
python preprocessing/crop_mask_resample_reproject.py -i slope_fill2.tif -o slope_fill2_out.tif  -m mack_LCC.tif -r bilinear -e '-821597 -4530418 1431287 -4174316'