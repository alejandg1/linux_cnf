#!/bin/bash
#dependencias = pv gzip pigz tar split

BK_LOCAL="/home/adre/.backups"
KEES_FILE="/home/adre/Documentos/pass"
MUSIC_DIR="/home/adre/server/Music"
FMEDIA_DIR="/home/adre/server/immich/Familiar/"
PMEDIA_DIR="/home/adre/server/immich/Personal"
WMEDIA_DIR="/home/adre/server/immich/wilmer/"
UPLOADED_IMAGES_DIR="/home/adre/server/immich/upload"
LOG_FILE="$BK_LOCAL/backup_log.txt"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

PARALLEL=false
COMPRESSOR="gzip"
COMPRESSOR_ARGS=""

mkdir -p "$BK_LOCAL"

split_backup() {
    local BK_NAME="$1"
    local SPLIT_NAME="$2"
    echo "Dividiendo backup en partes de 2GB..."
    split -b 2G "$BK_LOCAL/$BK_NAME" "$BK_LOCAL/$SPLIT_NAME"
    
    # Verificar que el split se completó correctamente
    if [ $? -eq 0 ]; then
        echo "Eliminando archivo original $BK_NAME..."
        rm -f "$BK_LOCAL/$BK_NAME"
        echo "Split completado y archivo original eliminado"
    else
        echo "Error al dividir el archivo, se conserva el original" >> "$LOG_FILE"
    fi
}

backupDir() {
    local BK_NAME="$1${TIMESTAMP}.tar.gz"
    local DIR="$2"
    
    if ! [ -d "$DIR" ]; then
        echo "Directorio $DIR no existe, omitiendo..." >> "$LOG_FILE"
        return 1
    fi

    total_size=$(du -sb "$DIR" | awk '{print $1}')
    echo -e "\nIniciando backup de $DIR (Tamaño: $(($total_size/1024/1024)) MB)"

    if $PARALLEL; then
        if command -v pigz >/dev/null; then
            COMPRESSOR="pigz"
            echo "Usando compresión paralela (pigz)"
        else
            echo "ADVERTENCIA: pigz no instalado. Usando gzip estándar." >> "$LOG_FILE"
            COMPRESSOR="gzip"
        fi
    fi

    if command -v pv >/dev/null; then
        echo "Mostrando progreso..."
        tar -cf - "$DIR" 2>/dev/null | \
        pv -s "$total_size" | \
        $COMPRESSOR $COMPRESSOR_ARGS > "$BK_LOCAL/$BK_NAME"
    else
        echo "ADVERTENCIA: pv no instalado. Sin barra de progreso." >> "$LOG_FILE"
        tar -czf "$BK_LOCAL/$BK_NAME" "$DIR"
    fi

    echo -e "\nBackup completado: $BK_NAME"
    
    # Excepción para archivos de KeePass (no dividir)
    if [[ "$BK_NAME" != backup_kees_* ]]; then
        split_backup "$BK_NAME" "split_${BK_NAME%.tar.gz}_part_"
    fi
}

# ---- Argumentos ----
while getopts ":amkupt" opt; do
    case $opt in
        t)
            PARALLEL=true
            echo "Modo paralelo activado"
            ;;
    esac
done

OPTIND=1
while getopts ":amkupt" opt; do
    case $opt in
        a)
            echo "=== Backup completo iniciado ==="
            backupDir "backup_kees_" "$KEES_FILE"
            backupDir "backup_music_" "$MUSIC_DIR"
            backupDir "backup_fmedia_" "$FMEDIA_DIR"
            backupDir "backup_wmedia_" "$WMEDIA_DIR"
            backupDir "backup_pmedia_" "$PMEDIA_DIR"
            backupDir "backup_uploaded_" "$UPLOADED_IMAGES_DIR"
            ;;
        m) # Solo música
            backupDir "backup_music_" "$MUSIC_DIR"
            ;;
        k) # Solo KeePass
            backupDir "backup_kees_" "$KEES_FILE"
            ;;
        u) # Solo imágenes subidas
            backupDir "backup_uploaded_" "$UPLOADED_IMAGES_DIR"
            ;;
        p) # Solo Immich
            backupDir "backup_fmedia_" "$FMEDIA_DIR"
            backupDir "backup_pmedia_" "$PMEDIA_DIR"
            backupDir "backup_wmedia_" "$WMEDIA_DIR"
            ;;
        \?)
            echo "Opción inválida: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

echo -e "\n=== Proceso finalizado ==="
