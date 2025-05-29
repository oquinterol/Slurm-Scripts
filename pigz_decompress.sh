#!/bin/bash

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=24   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4g   # memory per CPU core
#SBATCH -J "pigz_fastq"   # job name
#SBATCH --mail-user=oaquinterol@udistrital.edu.co   # email address
#SBATCH --mail-type=FAIL
#SBATCH --qos=pws

#this is a shell script that you launch using:$ 'sbatch pigz_compress_1file.sh  {file}' 

module purge
module load pigz

pigz -d -p $SLURM_NPROCS $1

