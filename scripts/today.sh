# Obtener la fecha actual
TODAY=$(date +"%d/%m/%Y")

# Copiar la fecha al portapapeles
echo "$TODAY" | xclip -sel clip
