#!/bin/bash
#SBATCH --nodes=1	    					  # Number of requested nodes
#SBATCH --ntasks=1        			  # Number of requested cores
#SBATCH --time=0:01:00			      # Max walltime
#SBATCH --partition=amilan        # Specify Summit Haswell testing nodes
#SBATCH --output=./output/python_code_%j.out		# Output file name


# Written by:	Shelley Knuth, 24 February 2014
# Updated by:   Andrew Monaghan, 08 March 2018
# Updated by:   Kim Kanigel Winner, 23 June 2018
# Updated by:   Shelley Knuth, 17 May 2019
# Purpose: 	To demonstrate how to submit a serial R job

# purge all existing modules
module purge

# Load the R module
module load python/3.10.2

python3 ./programs/python.py 1
# Change into programs directory


# Run R Script
