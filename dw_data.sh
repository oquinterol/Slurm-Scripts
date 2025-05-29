#!/bin/bash
module purge
module load parallel
module load sra-tools
# Descarga todos los ID que haya en un .txt y los agrega a reads/
cat $1 | parallel prefetch {} -O reads/
