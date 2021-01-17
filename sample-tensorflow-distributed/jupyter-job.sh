#!/bin/bash
#
#SBATCH --job-name=jupyter
#SBATCH --output=jupyter_%A.out
#SBATCH --error=jupyter_%A.err
#
#SBATCH --nodes=2
#SBATCH --time=30:00
#SBATCH --nodelist=komputasi07,komputasi08

source ~/sample-env/bin/activate
srun python3 mnist.py