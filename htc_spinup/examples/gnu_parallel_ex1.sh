#!/bin/bash

#SBATCH --job-name=par_ex1
#SBATCH --output=outfiles/par_ex1.%A.out 
#SBATCH --partition=shas   
#SBATCH --qos=normal      
#SBATCH --time=00:10:00  
#SBATCH --ntasks=8       
#SBATCH --cpus-per-task=1 

# purge all existing modules
module purge

# load any modules needed to run your program
module load gnu_parallel   
module load python/2.7.11
module load R/3.5.0

# Run your program
echo "############################################"

find infiles/*.txt | parallel --dry-run python python_array_test.py {} >commands.txt
parallel -j $SLURM_NTASKS < commands.txt

find infiles/*.txt | parallel --dry-run Rscript R_array_test.R {} >commands.txt
parallel -j $SLURM_NTASKS < commands.txt

echo "############################################"
exit
