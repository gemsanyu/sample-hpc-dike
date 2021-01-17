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
srun xvfb-run -s "-screen 0 1400x900x24" jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --NotebookApp.token=password-bebas
