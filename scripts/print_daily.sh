#!/bin/bash

IMAGEN="/home/adre/Imágenes/daily_print.png"
IMPRESORA="Canon-G3010-series-casa"
#INACTIVA="inactiva."
#IMPRESORA_ESTADO=$(lpstat -p $IMPRESORA)

echo "imprimiendo.."
lp -d $IMPRESORA $IMAGEN
