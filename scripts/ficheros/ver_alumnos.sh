#!/bin/bash

while IFS=','  read -r nombre nota; do
   echo "Alumno = $nombre - Nota: $nota"
done < alumnos_notas.txt
