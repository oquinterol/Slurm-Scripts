#!/bin/bash
#SBATCH --job-name=blastquery
#SBATCH --output=blastquery_%j.out
#SBATCH --error=blastquery_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40
#SBATCH --time=02:00:00


# Este script se puede lanzar con multiples fasta asi
# for fa in /scrash/.../*.fa; do sbatch blastquery.sh $fa ; done
module purge 
module load blast

blastn \
    -query "$1" \
    -db GenesTA \
    -out resultados_${SLURM_JOB_ID}.tsv \
    -outfmt "6 qseqid sseqid pident length evalue bitscore" \
    -evalue 1e-5 \
    -max_target_seqs 5 \
    -num_threads 40