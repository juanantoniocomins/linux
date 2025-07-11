#!/bin/bash

read -p "Introduce un numero: " num1
read -p "Introduce oro numero: " num2

echo "======================================"
echo "1 - Sumar"
echo "2 - Restar"
echo "3 - Multiplicar"
echo "4 - Dividir"
echo "======================================"
read -p "Seleciona un opción: " opcion

# -------------SUMAR-------------------
if [ "$opcion" == "1" ]; then
suma=$((num1 + num2))
echo "$num1 + $num2 = $suma"
fi
# ------------RESTAR-------------------
if [ "$opcion" == "2" ]; then
resta=$((num1 - num2))
echo "$num1 - $num2 = $resta"
fi
#------------MULTIPLICAR---------------
if [ "$opcion" == "3" ]; then
multi=$((num1 * num2))
echo "$num1 * $num2 = $multi"
fi
#-----------DIVIDIR-------------------
if [ "$opcion" == "4" ]; then
divi=$((num1 / num2)) 
echo "$num1 / $num2 = $divi"
fi 

echo "====================================="
echo "Fin del programa"

