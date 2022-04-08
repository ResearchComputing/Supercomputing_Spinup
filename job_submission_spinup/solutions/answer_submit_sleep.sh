#!/bin/bash

## Directives
#SBATCH --job-name=sleep							  # Job name
#SBATCH --nodes=1    									  # Number of requested nodes
#SBATCH --ntasks=1                      # Number of requested tasks (cores)
#SBATCH --time=0:01:00                  # Max wall time
#SBATCH --partition=shas-testing        # Specify Summit Haswell testing nodes
#SBATCH --output=./output/sleep.%j.out  # Rename standard output file
#SBATCH --mail-user=<user@email.com>    # Email address
#SBATCH --mail-type=END									# Email when job ends

## Software
module purge                        # Purge all existing modules

## User commands
echo "Running on host" $(hostname)
echo "Starting Sleep"
sleep 30
echo "Ending Sleep. Exiting Job!"


## Updated by: Gerardo Hidalgo-Cuellar on 17 Nov, 2021
## Purpose: Solutions for the submit_sleep.sh example

