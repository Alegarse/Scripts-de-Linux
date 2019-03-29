#!/bin/bash
cat <<ENUNCIADO
Ejercicio 12 Scripts.
Repite el script del ejercicio 7, pero verificando que se le ha pasado un
parámetro, e informando adecuadamente si el script no recibe al menos
un parámetro.
ENUNCIADO
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
