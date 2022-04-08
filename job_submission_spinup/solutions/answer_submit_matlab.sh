#!/bin/bash

## Directives
#SBATCH --job-name=matlab							  # Job name
#SBATCH --nodes=1    									  # Number of requested nodes
#SBATCH --ntasks=1                      # Number of requested tasks (cores)
#SBATCH --time=0:05:00                  # Max wall time
#SBATCH --partition=shas-testing        # Specify Summit Haswell testing nodes
#SBATCH --output=./output/matlab.%j.out          # Rename standard output file
#SBATCH --mail-user=<user@email.com>    # Email address
#SBATCH --mail-type=END									# Email when job ends

## Software
module purge                        		# Purge all existing modules
module load matlab									 		# load in matlab

## User commands

## Change into the directory with the matlab program
cd programs
## Run the matlab script
matlab -nodisplay -nodesktop -r "matlab_tic;"


## Updated by: Gerardo Hidalgo-Cuellar on 17 Nov, 2021
## Purpose: Solutions for the submit_matlab.sh example

