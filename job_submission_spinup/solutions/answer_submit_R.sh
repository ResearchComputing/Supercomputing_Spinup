#!/bin/bash
#SBATCH --nodes=1	    					  # Number of requested nodes
#SBATCH --ntasks=1        			  # Number of requested cores
#SBATCH --time=0:01:00			      # Max walltime
#SBATCH --partition=shas-testing  # Specify Summit Haswell testing nodes
#SBATCH --output=./output/R_code_%j.out		# Output file name


# Written by:	Shelley Knuth, 24 February 2014
# Updated by:   Andrew Monaghan, 08 March 2018
# Updated by:   Kim Kanigel Winner, 23 June 2018
# Updated by:   Shelley Knuth, 17 May 2019
# Purpose: 	To demonstrate how to submit a serial R job

# purge all existing modules
module purge

# Load the R module
module load R

# Change into programs directory
cd programs

# Run R Script
Rscript R_program.R
