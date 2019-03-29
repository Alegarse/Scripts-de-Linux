#!/bin/bash
cat << ENUNCIADO
Ejercicio 17 Scripts.
Modifica el script anterior, para que nos informe si la creación del
directorio tuvo éxito o no. Aquí tienes varias posibilidades, una de ellas
es poner el comando de creación en la propia condición del if (el if
evaluará el exit code del comando). Otra posibilidad es intentar la
creación primero y después comprobar el valor del exit code.
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
    if [ $? -eq 0 ]
    then
    echo "El directorio $1 se ha creado correctamente"
    else
    echo "El directorio $1 no se ha creado correctamente"
    fi
  fi
fi
