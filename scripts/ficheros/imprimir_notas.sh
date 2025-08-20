#!/bin/bash

FICHERO="alumnos_notas.txt"

if [[ ! -f $FICHERO ]]; then
   echo "No existe el fichero o está en otra ruta: $FICHERO"
   exit 1
fi

while IFS=, read -r _ nota
do
   echo "$nota"
done <"$FICHERO"

