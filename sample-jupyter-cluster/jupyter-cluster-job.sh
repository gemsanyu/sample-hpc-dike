#!/bin/bash
#
#SBATCH --job-name=jupyter
#SBATCH --output=jupyter_%A.out
#SBATCH --error=jupyter_%A.err
#
#SBATCH --nodes=1
#SBATCH --time=30:00
#SBATCH --nodelist=komputasi07

source ~/sample-env/bin/activate
jupyter-notebook --no-browser --NotebookApp.token=password-bebas
