#!/bin/bash
#
#SBATCH --job-name=mp
#SBATCH --output=result_mp.txt
#
#SBATCH --nodes=2
#SBATCH --time=02:00
#SBATCH --tasks-per-node=5

source ~/sample-env/bin/activate
mpirun -n 5 python3 helloworld.py
