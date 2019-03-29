#!/bin/bash
cat << ENUNCIADO
Ejercicio 16 Scripts.
Modifica el script del ejercicio 11, para que verifique si existe el
directorio antes de crearlo. Si existe, simplemente debe mostrar un
mensaje.
ENUNCIADO
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
