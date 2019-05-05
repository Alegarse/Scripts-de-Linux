#!/bin/bash

if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  for i
  do
    if cat /etc/passwd|grep $i>/dev/null
    then echo "El usuario $i existe en el sistema"
    else echo "El usuario $i no existe en el sistema"
    fi
  done
fi  
