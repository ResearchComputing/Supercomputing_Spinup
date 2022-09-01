#!/bin/bash

#SBATCH --job-name="hello-mpi"
#SBATCH --partition=amilan
#SBATCH --time=00:01:00
#SBATCH --ntasks=4
#SBATCH --nodes=1
#SBATCH --nodelist=c3cpu-a2-u7-1
#SBATCH --output=hello.%j.out

ml purge
ml gcc/11.2.0 openmpi

mpicc ./programs/hello_mpi.c -o ./programs/hello_mpi.exe
mpirun -n 4 -mca btl tcp,self ./programs/hello_mpi.exe
