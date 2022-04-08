#!/bin/bash

## Slurm Directives
#SBATCH --nodes=1
#SBATCH --time=00:02:00
#SBATCH --partition=shas-testing
#SBATCH --ntasks=4
#SBATCH --job-name=lbPythonDemo
#SBATCH --output=./output/loadbalance.%j.out

## Software
module purge

module load python
module load loadbalance

## User Scripting
cd programs 
mpirun lb lb_cmd_file
