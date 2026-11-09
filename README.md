# Tutorial de Slurm

Este repositorio contiene un pequeño tutorial para aprender a utilizar **Slurm**, un sistema de gestión de trabajos para clústeres de cómputo.

## Contenido

### `00-ConceptosBasicos/`
- [Conceptos básicos para el uso de Slurm](00-ConceptosBasicos/ConceptosGenerales.md)
- [Inicio de sesión por SSH: línea de comandos, archivo de configuración y autenticación por clave](00-ConceptosBasicos/sshLogin.md)
- [Buenas prácticas para organizar un repositorio de código en bioinformática](00-ConceptosBasicos/ComoOrganzaUnRepo.md)

### `scripts/` — ejemplos de trabajos para Slurm
| Script | Uso |
|---|---|
| `sra2fastq.sh`, `bulk-sra2fastq.sh` | Descarga y conversión de lecturas SRA a FASTQ (individual o por lotes) |
| `dw_data.sh` | Descarga en paralelo de accesiones SRA con `prefetch` y `parallel` |
| `trimmomatic_PE.sh`, `trim_galore_PE.sh` | Recorte de calidad de lecturas pareadas |
| `blastquery.sh` | Búsquedas `blastn` como trabajo de Slurm |
| `extractregion.sh` | Ordenado e indexado de archivos BAM con `samtools` |
| `pigz_compress.sh`, `pigz_decompress.sh` | Compresión y descompresión en paralelo con `pigz` |

### Próximamente
- Envío y dependencias de trabajos (`sbatch`, ID de trabajo, arreglos de trabajos)
- Monitoreo y gestión de trabajos (`squeue`, `sacct`, `scancel`)
- Contenedores con Docker y Singularity/Apptainer en Slurm

## Requisitos

- Acceso a un clúster con Slurm instalado
- Conocimientos básicos de terminal Linux

## Uso

Clona este repositorio y sigue los ejemplos y explicaciones en los archivos.

```bash
git clone https://github.com/oquinterol/Slurm-Scripts.git
cd Slurm-Scripts
```

## Contribuciones

¡Las contribuciones son bienvenidas! Abre un issue o haz un pull request.

## Licencia

Este proyecto está bajo la licencia MIT.