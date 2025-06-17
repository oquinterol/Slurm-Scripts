# Buenas Prácticas para Organizar un Repositorio de Código en Bioinformática

## 1. Estructura de Carpetas

```
/project-root
│
├── data/           # Datos brutos y procesados (no modificar los brutos)
├── docs/           # Documentación y manuales
├── notebooks/      # Jupyter/RMarkdown notebooks para análisis exploratorio
├── scripts/        # Scripts de análisis y procesamiento
├── src/            # Código fuente principal (funciones, módulos)
├── results/        # Resultados generados (tablas, figuras)
├── tests/          # Pruebas automatizadas
└── env/            # Archivos de entorno (requirements.txt, environment.yml)
```

## 2. Control de Versiones

- Usar Git para el control de versiones.
- Incluir un archivo `.gitignore` para excluir archivos temporales, datos sensibles y resultados grandes.

## 3. Documentación

- Incluir un `README.md` con:
    - Descripción del proyecto.
    - Instrucciones de instalación y uso.
    - Estructura del repositorio.
- Documentar scripts y funciones con comentarios claros y docstrings.

## 4. Gestión de Datos

- No subir datos sensibles o grandes al repositorio.
- Usar enlaces o scripts para descargar datos públicos.
- Mantener datos brutos inalterados.

## 5. Reproducibilidad

- Usar archivos de entorno (`requirements.txt`, `environment.yml`) para especificar dependencias.
- Proveer scripts de ejecución automática (por ejemplo, `run_all.sh` o `Makefile`).

## 6. Buenas Prácticas de Código

- Escribir código modular y reutilizable.
- Seguir convenciones de estilo (PEP8 para Python, tidyverse para R).
- Incluir pruebas automatizadas cuando sea posible.

## 7. Licencia y Créditos

- Añadir un archivo `LICENSE`.
- Incluir un archivo `AUTHORS.md` o sección de créditos en el `README.md`.

---

> Una buena organización facilita la colaboración, reproducibilidad y mantenimiento de los proyectos en bioinformática.