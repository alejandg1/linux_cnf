#!/bin/bash

# Ruta al directorio que contiene las imágenes del fondo de pantalla
WALLPAPER_DIR="/home/adre/Imágenes/wallpapers/"

# Obtén la lista de todas las imágenes en el directorio
IMAGES=($WALLPAPER_DIR/*)

# Selecciona una imagen aleatoria de la lista
RANDOM_IMAGE=${IMAGES[$RANDOM % ${#IMAGES[@]}]}
echo $RANDOM_IMAGE

# Establece la imagen seleccionada como fondo de pantalla utilizando Nitrogen
nitrogen --set-zoom-fill $RANDOM_IMAGE
