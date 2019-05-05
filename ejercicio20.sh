#!/bin/bash

if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  if [ -f $1 ]
  then
  echo "El fichero $1 ya existe"
    if [ -x $1 ]
    then
    echo "El fichero $1 tiene permisos de ejecución"
    else
    echo "Elfichero $1 no tiene permisos de ejecución"    
    fi
  else
  echo "El fichero $1 no existe"
  fi
fi
