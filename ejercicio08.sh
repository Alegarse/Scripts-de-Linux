#!/bin/bash
cat << ENUNCIADO
Ejercicio 08 Scripts.
Crea un script que muestre en pantalla el contenido de un archivo a
partir del segundo parámetro recibido. El segundo parámetro recibido
debería ser la ruta (relativa o absoluta) a un archivo existente.
Finalmente muestra el exit code del comando usado para visualizar el
archivo.
Cuando hayas realizado el script, y comprobado que funciona
correctamente, realiza la siguiente prueba: Pasa como 2º parámetro la
ruta a un archivo sobre el que no tengas permiso de lectura.
ENUNCIADO
echo "Script que muestra el contenido del archivo pasado como segundo parámetro."
echo "El archivo a mostrar es: $2"
echo
cat $2
echo "El exit code de este es: $?"
