#!/bin/bash
PATH="./ejercicio1.sh"
if [[ -e $PATH ]]
then
    echo "La ruta: $PATH existe!"
    if [[ -x $PATH ]]
    then
        echo "Tengo permisos de ejecución sobre la ruta: $PATH"
    fi
else
    echo "La ruta: $PATH no existe"
fi