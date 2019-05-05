#!/bin/bash

echo "Script que muestra el contenido del archivo pasado como segundo parámetro."
echo "El archivo a mostrar es: $2"
echo
cat $2
echo "El exit code de este es: $?"
