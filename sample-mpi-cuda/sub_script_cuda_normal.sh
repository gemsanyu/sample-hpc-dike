#!/bin/bash
#
#SBATCH --job-name=mpi_cuda_normal
#SBATCH --output=mpi_cuda_normal.out
#
#SBATCH --nodes=2
#SBATCH --tasks-per-node=2
#SBATCH --time=01:00
#SBATCH --nodelist=komputasi08,komputasi07

srun --mpi=pmix -n 4 jacobi_cuda_normal_mpi -t 2 2

