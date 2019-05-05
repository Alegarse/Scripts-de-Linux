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
  echo "El directorio creado  es: $1"
  fi
fi
