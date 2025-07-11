#!/bin/bash

read -p "Intrroduce la nota: " nota

case $nota in
0) echo "No tienes ni idea";;
1|2|3) echo "Suspendido";;
4) echo "Suspendido, pero por poco";;
5) echo "Aprobado raspado";;
6) echo "Bien";;
7|8) echo "Notable";;
9|10) echo "Sobresaliente";; 
*) echo "Nota no valida";;
esac
