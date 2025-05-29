#!/bin/bash
#SBATCH --time=48:00:00   # walltime
#SBATCH -J "bam_sort_and_index"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=01:00:00
#SBATCH --mail-user=oquinterol@unal.edu.co   # email address
#SBATCH --mail-type=FAIL
#SBATCH --array=0-5   # Ajusta el rango según el número de archivos BAM en tu carpeta

module purge
# Carga el módulo de Samtools
module load samtools

# Lista de archivos BAM en la carpeta
bam_files=(*.bam)

# Selecciona un archivo BAM para procesar en esta tarea de matriz
current_bam="${bam_files[$SLURM_ARRAY_TASK_ID]}"

# Realiza el ordenamiento
samtools sort -o "${current_bam%.bam}.sorted.bam" "$current_bam"

# Indexa el archivo ordenado
samtools index "${current_bam%.bam}.sorted.bam"

# Genera el archivo FASTA usando samtools consensus
samtools consensus -a --show-ins no -r CP103927.1:558872-560452 "${current_bam%.bam}.sorted.bam" -o "${current_bam%.bam}.fa"

# Muestra un mensaje de finalización
echo "Procesamiento completo para $current_bam"

