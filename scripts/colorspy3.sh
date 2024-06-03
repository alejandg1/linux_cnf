#!/bin/bash

# Ruta al archivo de colores
colorFile="$HOME/.config/py3status/config"

# Cambiar colores
sed -i "s/color_good = .*/color_good = \"$COLOR4\"/" $colorFile
sed -i "s/color_degraded = .*/color_degraded = \"$FG\"/" $colorFile
sed -i "s/color_bad = .*/color_bad = \"$FG\"/" $colorFile
sed -i "s/color_separator = .*/color_separator = \"$FG\"/" $colorFile


