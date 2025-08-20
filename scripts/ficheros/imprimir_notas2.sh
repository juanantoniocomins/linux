#!/bin/bash
# Script para leer un fichero de alumnos y sus notas, ordenarlas y mostrar las notas (de menor a mayor)

FICHERO="alumnos_notas.txt"   # Nombre del fichero que contiene los alumnos y sus notas
ordenado=$(mktemp)            # Crear un fichero temporal donde guardaremos el resultado ordenado

# Comprobar si el fichero existe
if [[ ! -f $FICHERO ]]; then
   echo "El fichero no existe o no está en la ruta requerida: $FICHERO"
   exit 1                   # Salir del script si el fichero no existe
fi

# Ordenar el fichero por la segunda columna (nota), separador coma
# NOTA: falta la opción 'n' para ordenar numéricamente
sort -t',' -k2,2 "$FICHERO" > "$ordenado"

# Leer cada línea del fichero ordenado
while IFS=, read -r _ nota
do
   # Imprimir solo la nota de cada alumno
   echo "$nota"
done <"$ordenado"
