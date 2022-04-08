#!/bin/bash

#SBATCH --job-name=lb_ex1
#SBATCH --output=outfiles/lb_ex1.%A.out
#SBATCH --partition=shas
#SBATCH --qos=normal
#SBATCH --time=00:10:00
#SBATCH --ntasks=8 
#SBATCH --cpus-per-task=1

# purge all existing modules
module purge

# load any modules needed to run your program
module load intel/17.4
module load impi/17.3
module load loadbalance
module load python/2.7.11
module load R/3.5.0

#now run the loadbalancer on your list of commands:
mpirun lb commands.txt
