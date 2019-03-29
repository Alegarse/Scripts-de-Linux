#!/bin/bash
cat << ENUNCIADO
Ejercicio 14 Scripts.
Crea un script que reciba como parámetro la ruta a un archivo o
directorio, y nos informe si existe. Si el script no recibe un parámetro
debe informar adecuadamente.
ENUNCIADO

if [ $# -eq 1 ]
then
  if [ -e $1 ]
  then
  echo
  echo "El directorio o archivo $1 existe"
  fi
else
echo
cat << TEXTO
Error, no se ha recibido correctamente el parámetro de entrada.
La forma correcta sería: bash ejercicio14.sh [directorio o archivo]
TEXTO
fi
