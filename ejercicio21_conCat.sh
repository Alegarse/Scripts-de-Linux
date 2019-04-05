#!/bin/bash
cat << ENUNCIADO
Ejercicio 21 Scripts.
Crea un script que reciba como parámetros el nombre de uno o varios
usuarios, y nos indique si existen en el sistema.
Para este ejercicio el script debería mirar dentro del archivo
“/etc/passwd” y realizar un filtro con grep (utilizando tuberías).

ENUNCIADO
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  for i
  do
    if cat /etc/passwd|grep $i>/dev/null
    then echo "El usuario $i existe en el sistema"
    else echo "El usuario $i no existe en el sistema"
    fi
  done
fi  
