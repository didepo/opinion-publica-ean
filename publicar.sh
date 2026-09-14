#!/usr/bin/env bash
# Sincroniza la bóveda privada hacia content/ y publica el sitio.
# La bóveda es la fuente de verdad. content/ es una copia desechable:
# todo lo que esté aquí y no esté en la bóveda se borra.
set -euo pipefail

BOVEDA="${BOVEDA:-/Users/juandazaarevalo/Documents/clientes/ean/boveda-opinion-publica/Opinión Pública}"
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$REPO/content"

if [ ! -d "$BOVEDA" ]; then
  echo "✗ No encuentro la bóveda en: $BOVEDA" >&2
  echo "  Ajusta la ruta al inicio de este script o exporta BOVEDA=..." >&2
  exit 1
fi

echo "→ Sincronizando bóveda → content/"
mkdir -p "$DEST"
rsync -a --delete \
  --exclude '.obsidian/' \
  --exclude '.trash/' \
  --exclude '.DS_Store' \
  --exclude 'Welcome.md' \
  --exclude 'Privado/' \
  --exclude '_*' \
  "$BOVEDA"/ "$DEST"/

# La nota "Inicio" de la bóveda se vuelve la portada del sitio.
if [ -f "$DEST/Inicio.md" ]; then
  mv "$DEST/Inicio.md" "$DEST/index.md"
fi

echo "→ Notas sincronizadas: $(find "$DEST" -name '*.md' | wc -l | tr -d ' ')"
echo "→ Bases sincronizadas: $(find "$DEST" -name '*.base' | wc -l | tr -d ' ')"

if [ "${1:-}" = "--solo-sync" ]; then
  echo "✓ Listo (sin publicar)."
  exit 0
fi

cd "$REPO"
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "✓ No hay cambios que publicar."
  exit 0
fi

echo
echo "→ Cambios detectados:"
git status --short
echo
read -r -p "¿Publicar estos cambios? [s/N] " ok
case "$ok" in
  s|S|si|SI|Si)
    MSG="${2:-Actualización de contenido — $(date '+%Y-%m-%d %H:%M')}"
    git add -A
    git commit -m "$MSG"
    git push origin main
    echo "✓ Publicado. El sitio se reconstruye solo en 1–2 minutos."
    echo "  https://didepo.github.io/opinion-publica-ean"
    ;;
  *) echo "Cancelado. Los cambios quedan en content/ sin publicar." ;;
esac
