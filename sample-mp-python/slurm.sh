#!/bin/bash
#
#SBATCH --job-name=mp-python-gemilang
#SBATCH --output=result.txt
#
#SBATCH --nodes=1
#SBATCH --time=02:00
srun python2 mp_benchmark.py
