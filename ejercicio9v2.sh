function contar_archivos() {
    find $1 -type f | wc -l
}
contar_archivos $1