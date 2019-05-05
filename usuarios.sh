#!/bin/bash

#Función de apoyo para decir como se usa el script
function ayuda() {
cat << TEXTO

USO CORRECTO DEL SCRIPT	:

bash usuarios.sh [ -u <nombre de usuario> ] [-g] [ -d ] [-f]

-u Para decir a que usuario. Si no se especifica se hace para todos.

Opcionales (mínimo una de estas opciones):
-g Para mostrar los grupos a los que pertenecen los usuarios
-d Número de directorios que contiene el directorio del usuario
-f Número de archivos que contiene el directorio del usuario
[Pueden escribirse todas juntas. P.E: -gdf]

TEXTO
}

# Comprobamos si el número de parámetros <= 0
if [ $# -le 0 ]
then
  echo -e "\e[0;31m------------------------------------------------\e[0m"
  echo "Error.Debes introducir como mínimo un parámetro."
  echo -e "\e[0;31m------------------------------------------------\e[0m"
  ayuda
  exit 1
fi

#Defino variables que usaré para el funcionamiento del script
declare -i u=0
declare -i g=0
declare -i d=0
declare -i f=0

# Verificamos la introducción de comandos para ver cuales se introducen
while getopts ":u:gdf" opcion; do #La opción u es la única que espera argumento
  case $opcion in
     u) #Verificamos si se introduce usuario conocido
	u=1
	usuario=$OPTARG
	;;
     g)	#Verificamos si se pide la opción de grupos
	g=1
	;;
     d)	#Verificamos si se pide el conteo de directorios
	d=1
	;;
     f)	#Verificamos si se pide el conteo de archivos
	f=1
	;;
   esac
done

# Ejecutamos el script acorde a las opciones solicitadas

if [ $u -eq 1 ] #Se introduce un usuario
then
#Verificamos si el usuario existe en el sistema
   if grep "$usuario" /etc/passwd >/dev/null
   then
     echo -e "\e[0;32m===========================================\e[0m"
     echo " El usuario $usuario existe en el sistema"
     echo -e "\e[0;32m===========================================\e[0m"
     echo ""
	if [ $g -eq 1 ] #Verificamos si se ha pedido los grupos
	then
	grup=$(groups $usuario)
	echo -e "\e[0;36mGrupos del usuario\e[0m" $grup
        echo -e "\e[1;32m-----------------------------------------------\e[0m" 
	fi
	if [ $d -eq 1 ] #Verificamos si se han pedido los directorios
	then
	numDir=$(ls -D /home/$usuario 2>/dev/null | wc -l)
	echo -e "\e[0;36mNº directorios:\e[0m" $numDir
        echo -e "\e[1;36m-----------------------------------------------\e[0m"
	fi
	if [ $f -eq 1 ] #Verificamos si se han pedido los archivos
	then
	numFic=$(ls -l /home/$usuario 2>/dev/null | wc -l)
	echo -e "\e[0;36mNº ficheros:\e[0m" $numFic
        echo -e "\e[1;31m-----------------------------------------------\e[0m"
	fi
   else
     echo -e "\e[0;31m================================================\e[0m"
     echo " Error. El usuario $usuario no existe en el sistema"
     echo -e "\e[0;31m================================================\e[0m"
   fi
else
    echo -e "\e[0;37m============================================================\e[0m"
    echo "Mostrando la información para todos los usuarios del sistema"
    echo -e "\e[0;37m============================================================\e[0m"
	
	for i in $(cut -d: -f1 /etc/passwd); #Bucle para recorrer todos los usuarios
	do
	  echo ""
          if [ $g -eq 1 ] #Verificamos si se ha pedido los grupos
	  then
            grup=$(groups $i) #Mostramos los grupos para cada usuario leido de passwd   
	    echo -e "\e[1;34mGrupos del usuario\e[0m" $grup
	    echo -e "\e[1;32m-----------------------------------------------\e[0m"
	  fi
	  if [ $d -eq 1 ] #Verificamos si se han pedido los directorios
	  then
	    numDir=$(ls -D /home/$i 2>/dev/null | wc -l) #Mostramos el número de directorios de cada usuario
	    echo -e "\e[1;34mNº directorios del usuario $i:\e[0m" $numDir
	    echo -e "\e[1;36m-----------------------------------------------\e[0m"
      	  fi
	  if [ $f -eq 1 ] #Verificamos si se han pedido los archivos
	  then
	    numFic=$(ls -l /home/$i 2> /dev/null | wc -l)
	    echo -e "\e[1;34mNº ficheros del usuario $i:\e[0m" $numFic #Mostramos la cantidad de archivos de cada directorio de usuario
	    echo -e "\e[1;31m-----------------------------------------------\e[0m"
	  fi
	done
fi
