#!/bin/bash
#SBATCH --time=48:00:00            # Walltime
#SBATCH -J "trimming-fq"           # Nombre del trabajo
#SBATCH --ntasks=15                 # Número de núcleos del procesador (tareas)
#SBATCH --nodes=1                  # Número de nodos
#SBATCH --mem-per-cpu=4g           # Memoria por núcleo de CPU
#SBATCH --mail-user=oquinterol@unal.edu.co   # Dirección de correo electrónico
#SBATCH --mail-type=FAIL           # Tipo de notificación por correo electrónico en caso de fallo

# Cargar el módulo de Trim Galore
module load conda-pws trim_galore pigz multiqc

# Definir las rutas de los archivos FASTQ de entrada
input_R1="$1"
input_R2="$2"

# Verificar si se proporcionaron las rutas de los archivos FASTQ
if [ -z "$input_R1" ] || [ -z "$input_R2" ]; then
  echo "Por favor, proporcione los archivos FASTQ de entrada como argumentos al script."
   echo "Uso: sbatch trimming_PE.slurm archivo_R1.fastq archivo_R2.fastq"
  exit 1
fi

# Carpeta con informes
mkdir informes_fastqc
# Argumentos adicionales para FastQC
fastqc_args="--outdir informes_fastqc"

# Ejecutar Trim Galore
trim_galore --paired --quality 20 --length 60 --retain_unpaired --cores 4 --trim-n --fastqc_args "$fastqc_args" "$input_R1" "$input_R2"

# Compila informes
cd informes_fastqc
multiqc .
cd ..

#Compresión informes
tar -cvf informes_fastqc | pigz -p $SLURM_NPROCS -k - > InformesQ.tar.gz