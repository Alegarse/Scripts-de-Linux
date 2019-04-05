#!/bin/bash
cat << ENUNCIADO
Ejercicio 22 Scripts.
Crea un script que reciba como parámetros el nombre de uno o varios
usuarios y nos indique, si existen, si están conectados en el momento
actual. Recuerda, para saber si un usuario está conectado, puedes
utilizar, entre otros, el comando “who”.

ENUNCIADO
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
else
  for i
  do
    if grep "$i" /etc/passwd >/dev/null
    then echo "El usuario $i existe en el sistema"
      if who | grep $i >/dev/null
      then echo "Y está conectado"
      else echo "Y no está conectado"
      fi
    else echo "El usuario $i no existe en el sistema"
    fi
  done
fi  
