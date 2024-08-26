#!/bin/bash

function contar_archivos() {
  numero_archivos=$(ls -l | wc -l) 
  echo $(($numero_archivos - 1)) 
}

cantidad=$(contar_archivos)

echo "Hay $cantidad de archivos en este directorio." 