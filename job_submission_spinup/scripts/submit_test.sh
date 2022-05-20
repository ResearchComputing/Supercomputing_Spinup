#!/bin/bash

## Directives
#SBATCH --ntasks=1                      # Number of requested tasks
#SBATCH --time=0:01:00                  # Max wall time
#SBATCH --partition=shas-testing        # Specify Summit Haswell nodes
#SBATCH --output=./output/test_%j.out            # Rename standard output file

## Software
module purge                        # Purge all existing modules

## User commands
echo "This is a test of user $USER" 

## Updated by: Gerardo Hidalgo-Cuellar on 17 Nov, 2021
## Purpose: To teach the anatomy of a slurm script

