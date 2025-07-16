#!/bin/bash

contador=0

for archivo in *.sh; do
   echo "Archivo encontrado: $archivo"
   contador=$(($contador+1))
done

echo ""
echo "Hay un total de $contador ficheros con extension sh"
