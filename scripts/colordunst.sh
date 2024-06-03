#!/bin/bash

# Ruta al directorio que contiene las conf de dunst
dunstrc="/home/adre/.config/dunst/dunstrc"

# cambiar colores

sed -i "s/frame_color = .*/frame_color = \"$FG\"/" $dunstrc

pkill dunst 

