#!/bin/bash

nombres=("Ana" "Juan" "Pepe" "Maria" "Andrea" "Angel" "Elisa")
contador=0

for nombre in "${nombres[@]}"; do
   echo "$nombre"
   contador=$((contador+1))
done

echo "Hay $contador usuarios."

