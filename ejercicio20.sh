#!/bin/bash
cat << ENUNCIADO
Ejercicio 20 Scripts.
Crea un script que reciba como parámetro la ruta a un fichero y que nos
indique si tiene permisos de ejecución.
El script deberá verificar que se ha introducido algún parámetro, y en el
caso de que se haya introducido, verificar antes de comprobar los
permisos que el fichero existe.

ENUNCIADO
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
