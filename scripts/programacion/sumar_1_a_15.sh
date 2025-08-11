#!/bin/bash

suma=0

for ((x=0; x<=15; x++)); do
   suma=$((suma + $x))
done

echo "El total de sumar del 1 al 15 = $suma"
