#!/bin/bash

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=20   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4g   # memory per CPU core
#SBATCH -J "sra2fastq"   # job name
#SBATCH --mail-user=oaquinterol@udistrital.edu.co   # email address
#SBATCH --mail-type=FAIL
#SBATCH --qos=pws

module purge
module load sra-tools

fasterq-dump $1 -e $SLURM_NPROCS -O fastq/raw/
