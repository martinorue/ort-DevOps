#!/bin/bash
#En caso de ser un DIRECTORIO, se deberá de mostrar por pantalla "La ruta: RUTA recibida es un directorio".
#En caso de ser un ARCHIVO REGULAR, se deberá de mostrar por pantalla "La ruta: RUTA recibida es un archivo regular".
#En caso de ser OTRO TIPO DE ARCHIVO, se deberá de mostrar por pantalla "La ruta: RUTA es otro tipo de archivo".
#Ademas es necesario ejecutar un ls -l sobre la RUTA solicitada.
PATH=$1

if [[ -e $PATH ]]; then
    if [[ -d $PATH ]]; then
        echo "La ruta: $PATH recibida es un directorio"
    elif [[ -f $PATH ]]; then
        echo "La ruta: $PATH recibida es un archivo regular"
    else
        echo "La ruta: $PATH es otro tipo de archivo"
    fi
/bin/ls -l $PATH
else 
    echo "La ruta: $PATH no existe"
fi