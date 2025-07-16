#!/bin/bash

palabra="Linux Ubuntu"

for ((i=0;i<${#palabra};i++)); do
   echo "${palabra:$i:1}"
done

