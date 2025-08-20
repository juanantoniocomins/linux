#!/bin/bash

FICHERO="alumnos_notas.txt"

if [[ ! -f $FICHERO ]]; then
   echo "No se encuentra el fichero: $FICHERO"
   exit 1
fi

while IFS=, read -r alumno _
do
   echo "$alumno"
done <"$FICHERO"
