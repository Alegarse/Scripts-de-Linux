#!/bin/bash
cat <<ENUNCIADO
Ejercicio 11 Scripts.
Modifica el script anterior, de manera que el script retorne un 1 en el
caso A (después de mostrar el mensaje), y devuelva un 0 en el caso B
(después de haber mostrado la información sobre los parámetros).
Cuando pruebes este script ejecutándolo desde la terminal, tras
ejecutarlo verifica su exit code.
ENUNCIADO
echo ""
if [ $# -eq 0 ]
then
echo "No has introducido ningún parámetro"
exit 1
else
echo "El número de parametros recibidos es: $#"
echo
echo "Los parámetros  recibidos son: $@"
exit 0
fi
