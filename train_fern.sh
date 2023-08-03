#!/bin/bash

#SBATCH --job-name=nerf_fern
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH -p batch
#SBATCH -w agi2
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=20G
#SBATCH --time=14-0
#SBATCH -o %N_%x_%j.out
#SBTACH -e %N_%x_%j.err

source /data/sunghoon/init.sh
conda activate nerf
python run_nerf.py \
        --config configs/fern.txt