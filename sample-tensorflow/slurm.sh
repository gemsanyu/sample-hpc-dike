#!/bin/bash
#
#SBATCH --job-name=cnn_sample
#SBATCH --output=cnn_%A.out
#SBATCH --error=cnn_%A.err
#
#SBATCH --time=05:00

source ~/sample-env/bin/activate
srun python3 conv.py
