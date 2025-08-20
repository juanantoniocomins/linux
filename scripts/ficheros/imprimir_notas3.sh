#!/bin/bash

FICHERO="alumnos_notas.txt"
ordenado=$(mktemp)

if [[ ! -f $FICHERO ]]; then
   echo "No existe el fichero: $FICHERO o no está en la ruta"
   exit 1
fi

# Ordenar numéricamente por la segunda columna (nota) de mayor a menor
# Se eliminan espacios en la columna de nota y se fuerza la interpretación numérica
awk -F',' '{gsub(/ /,"",$2); print $1 "," $2}' "$FICHERO" | sort -t',' -k2,2g -r > "$ordenado"

# Mostrar solo las notas
while IFS=, read -r _ nota
do
   echo "$nota"
done <"$ordenado"
