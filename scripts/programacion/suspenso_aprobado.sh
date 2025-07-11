#!/bin/bash

read -p "Introduce la nota: " nota

if [[ $nota -ge 5 && $nota -le 10 ]]; then
echo "Estas aprobado"
elif [[ $nota -ge 0 && $nota -lt 5 ]]; then
echo "Estaas suspendido"
else
echo "Numero no valido"
fi
