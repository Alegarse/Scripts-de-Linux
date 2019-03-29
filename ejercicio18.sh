#!/bin/bash
cat << ENUNCIADO
Ejercicio 18 Scripts.
Crea un script que reciba como parámetro la ruta a un fichero y que nos
indique si tiene permisos de lectura.
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
    if [ -r $1 ]
    then
    echo "Y dicho fichero $1 tiene permisos de lectura"
    fi
  else
  echo "El fichero $1 no existe"
  fi
fi  
