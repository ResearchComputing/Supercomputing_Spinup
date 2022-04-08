#!/bin/bash

#SBATCH --job-name=array_ex1
#SBATCH --output=outfiles/array_ex1.%A_%a.out 
#SBATCH --partition=shas   
#SBATCH --qos=normal      
#SBATCH --time=00:00:30  
#SBATCH --ntasks=1      
#SBATCH --cpus-per-task=1 
#SBATCH --array=1-12


# Run your program
echo "############################################"
echo "start array job ${SLURM_ARRAY_TASK_ID}"
echo "This job is performing $SLURM_NTASKS tasks"
echo "This job has reserved $SLURM_CPUS_PER_TASK cores for $SLURM_NTASKS tasks"
JOBMEM=$(echo "scale=2; $SLURM_CPUS_PER_TASK*$SLURM_MEM_PER_CPU/1000" | bc)
echo "Each task has $JOBMEM GB of memory allocated to it"
