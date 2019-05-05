#!/bin/bash

if [ $# -eq 1 ]
then
  if [ -d $1 ]
  then
  echo
  echo "$1 es un directorio"
  fi
  if [ -f $1 ]
  then
  echo
  echo "$1 es un archivo"
  fi
else
echo
cat << TEXTO
Error, no se ha recibido correctamente el parámetro de entrada.
La forma correcta sería: bash ejercicio14.sh [directorio o archivo]
TEXTO
fi
