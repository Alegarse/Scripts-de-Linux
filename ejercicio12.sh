#!/bin/bash

if [  $# -eq 1 ]
then
mkdir "$1"
echo "Se ha creado corectamente el directorio $1"
else
echo
cat << TEXTO
Error, no se puede crear el directorio ya que no ha introducido ningún parámetro
La forma correcta sería: bash ejercicio12.sh [nombre_dir]
Gracias.
TEXTO
fi
