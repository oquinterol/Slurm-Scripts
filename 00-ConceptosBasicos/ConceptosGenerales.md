# Conceptos Básicos para el Uso de Slurm

Slurm es un sistema de gestión de recursos y planificación de trabajos (workload manager) ampliamente utilizado en entornos de computación de alto rendimiento (HPC). Permite a los usuarios enviar, controlar y monitorear trabajos en un clúster de computadoras.

## ¿Qué deberías saber?

- **Nodo**: Una máquina individual dentro del clúster.
- **Trabajo (Job)**: Una tarea o conjunto de tareas que se envían al clúster para su ejecución.
- **Cola (Queue/Partition)**: Un grupo de nodos con características similares donde se pueden enviar trabajos.
- **Script de envío**: Archivo que contiene las instrucciones y recursos requeridos para ejecutar un trabajo.
- **Comandos básicos**: `sbatch` (enviar trabajos), `squeue` (ver trabajos en cola), `scancel` (cancelar trabajos), `sinfo` (información del clúster).

Conocer estos conceptos es fundamental para aprovechar Slurm de manera eficiente y gestionar recursos computacionales de forma óptima.