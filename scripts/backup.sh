#!/bin/bash
BK_LOCAL="/home/adre/.backups"
KEES_FILE="/home/adre/Documentos/pass"
MUSIC_DIR="/home/adre/Música"
BK_KEES="backup_kees$(date +"%Y%m%d_%H%M%S").tar.gz"
BK_MSC="backup_music$(date +"%Y%m%d_%H%M%S").tar.gz"

if [[ ! -d "$BK_LOCAL" ]]; then
  mkdir -p $BK_LOCAL
fi
if [[ ! -d "$MUSIC_DIR" ]]; then
  echo "El directorio de música no existe: $MUSIC_DIR"
  exit 1
fi

backup_kees() {
  tar -czvf $BK_KEES $KEES_FILE >/dev/null
  mv $BK_KEES $BK_LOCAL
}

backup_music() {
  tar -czvf $BK_MSC $MUSIC_DIR >/dev/null
  mv $BK_MSC $BK_LOCAL
}

while getopts ":amb" opt; do
  case $opt in
    a)
      backup_kees
      backup_music
      ;;
    m)
      backup_music
      ;;
    b)
      backup_kees
      ;;
    \?)
      echo "Opción inválida: -$OPTARG"
      exit 1
      ;;
  esac
done

echo "terminado"
