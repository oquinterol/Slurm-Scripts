# Conceptos Básicos para el Uso de Slurm

Slurm es un sistema de gestión de recursos y planificación de trabajos (workload manager) ampliamente utilizado en entornos de computación de alto rendimiento (HPC). Permite a los usuarios enviar, controlar y monitorear trabajos en un clúster de computadoras.

<div align="center">
    <img src="https://storage.googleapis.com/gweb-cloudblog-publish/images/slurm-2r8eb.max-400x400.PNG" alt="Slurm Logo" width="200"/>
</div>

## ¿Qué deberías saber?
- **Clúster**: Un conjunto de nodos interconectados que trabajan juntos como un único sistema para ejecutar aplicaciones en paralelo. Los clústeres HPC (High-Performance Computing) están diseñados para ofrecer un alto rendimiento en tareas computacionalmente intensivas.

- **Nodo**: Una máquina individual dentro del clúster. Cada nodo tiene su propia CPU, memoria y, posiblemente, GPUs. Los trabajos se ejecutan en estos nodos.

- **Trabajo (Job)**: Una tarea o conjunto de tareas que se envían al clúster para su ejecución. Un trabajo puede ser un script, un programa ejecutable o una serie de comandos.

- **Cola (Queue/Partition)**: Un grupo de nodos con características similares donde se pueden enviar trabajos. Las colas permiten segmentar los recursos del clúster según diferentes criterios (tiempo de ejecución, tipo de hardware, etc.).

- **Script de envío**: Archivo que contiene las instrucciones y recursos requeridos para ejecutar un trabajo. Este script especifica la cola, el número de nodos, la memoria requerida y los comandos a ejecutar.

- **Recursos**: Los elementos necesarios para la ejecución de un trabajo, como tiempo de CPU, memoria, espacio en disco y acceso a GPUs. Slurm gestiona la asignación de estos recursos.

- **Planificación (Scheduling)**: El proceso de determinar cuándo y dónde se ejecutarán los trabajos en el clúster. Slurm utiliza algoritmos de planificación para optimizar el uso de los recursos y minimizar los tiempos de espera.

- **Comandos básicos**:
    - `sbatch`: Enviar un script de trabajo a Slurm.
    - `squeue`: Ver la lista de trabajos en cola y su estado.
    - `scancel`: Cancelar un trabajo en ejecución o en cola.
    - `sinfo`: Mostrar información sobre el estado de los nodos y las particiones del clúster.
    - `srun`: Ejecutar un trabajo interactivo o lanzar tareas en tiempo real.

Conocer estos conceptos es fundamental para aprovechar Slurm de manera eficiente y gestionar recursos computacionales de forma óptima.
