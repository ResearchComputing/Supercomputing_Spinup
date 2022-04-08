#!/bin/bash

#SBATCH --job-name=array_ex2
#SBATCH --output=outfiles/array_ex2.%A_%a.out 
#SBATCH --partition=shas   
#SBATCH --qos=normal      
#SBATCH --time=00:00:30  
#SBATCH --ntasks=1      
#SBATCH --cpus-per-task=3 
#SBATCH --array=1-12

# purge all existing modules
module purge

# load any modules needed to run your program
module load python/2.7.11
module load R/3.5.0

# Run your program
echo "############################################"
echo "start array job ${SLURM_ARRAY_TASK_ID}"
echo "This job is performing $SLURM_NTASKS tasks"
echo "This job has reserved $SLURM_CPUS_PER_TASK cores for $SLURM_NTASKS tasks"
JOBMEM=$(echo "scale=2; $SLURM_CPUS_PER_TASK*$SLURM_MEM_PER_CPU/1000" | bc)
echo "Each task has $JOBMEM GB of memory allocated to it"
echo ""
echo "Now run python (reads array-numbered test files into python and prints contents)"
echo""
python python_array_test.py infiles/file_${SLURM_ARRAY_TASK_ID}.txt
echo ""
echo "Now run R (reads array-numbered test files into R and prints contents)"
echo ""
Rscript R_array_test.R infiles/file_${SLURM_ARRAY_TASK_ID}.txt
echo ""
echo "done with array job ${SLURM_ARRAY_TASK_ID}"
echo "############################################"
exit
