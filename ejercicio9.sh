#!/bin/bash

function contar_archivos() {
    PATH=$1
    if [[ -d $PATH ]]; then
        numero_archivos=$(ls -l $PATH | wc -l) 
        echo $(($numero_archivos - 1))
    else
        echo "El directorio $PATH no existe"
    fi 
}

cantidad=$(contar_archivos)

echo "Hay $cantidad archivos en este directorio." 