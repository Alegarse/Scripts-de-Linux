#!/bin/bash

if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  if [ -d $1 ]
  then
  echo "El directorio $1 ya existe"
  else
  mkdir "$1"
    if [ $? -eq 0 ]
    then
    echo "El directorio $1 se ha creado correctamente"
    else
    echo "El directorio $1 no se ha creado correctamente"
    fi
  fi
fi
