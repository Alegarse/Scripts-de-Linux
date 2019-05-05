#!/bin/bash

if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  if [ -f $1 ]
  then
  echo "El fichero $1 ya existe"
    if [ -w $1 ]
    then
    echo "Y dicho fichero $1 tiene permisos de escritura"
    fi
  else
  echo "El fichero $1 no existe"
  fi
fi
