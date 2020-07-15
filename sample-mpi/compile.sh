#!/bin/bash
#
#SBATCH --job-name=compile
#SBATCH --output=compile.txt
#
#SBATCH --time=01:00
mpicxx hello.c -o hello
