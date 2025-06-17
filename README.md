# Tutorial de Slurm

Este repositorio contiene un pequeño tutorial para aprender a utilizar **Slurm**, un sistema de gestión de trabajos para clústeres de cómputo.

## Contenido

- 00. Conceptos Básicos
    - Como organizar un repositorio
    - ssh para loggeo
    - uso de linux
    - tmux
    - Monitoreo de Recursos
- 01. Conociendo Slurm
    - Comando sinfo (Cuales son los nodos, diferencia entre cluster y nodos)
    - Recursos disponibles
    - Como escribir un script de Slurm
        - Parámetros de SBATCH
        - Variables de SBATCH
- 02. Como lanzar tareas a Slurm
    - Que el ID job (Para que sirve)
    - Como lanzar multiples tareas
    - Uso del ID como condicional (para iniciar nuevas tareas)
- 03. Monitoreo y gestión de trabajos
    - Como ver la lista de los trabajos corriendo
- 04. Devops (Como poner cosas en funcionamiento, Lanzar a producción)
    - Docker
    - Singularity
    - Integración con Slurm
- Ejemplos de scripts

## Requisitos

- Acceso a un clúster con Slurm instalado
- Conocimientos básicos de terminal Linux

## Uso

Clona este repositorio y sigue los ejemplos y explicaciones en los archivos.

```bash
git clone https://github.com/tu-usuario/Slurm-Scripts.git
cd Slurm-Scripts
```

## Contribuciones

¡Las contribuciones son bienvenidas! Abre un issue o haz un pull request.

## Licencia

Este proyecto está bajo la licencia MIT.