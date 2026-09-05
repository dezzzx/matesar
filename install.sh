#!/bin/bash
# Instalador de matesar desde GitHub
# Uso en un ordenador nuevo:
#   curl -fsSL https://raw.githubusercontent.com/dezzzx/matesar/main/install.sh | bash
# o clonando primero el repo y ejecutando ./install.sh
set -e

REPO_URL="https://github.com/dezzzx/matesar.git"   
INSTALL_DIR="$HOME/matesar"

echo "== Instalando matesar =="

# 1. git (por si acaso no está)
if ! command -v git >/dev/null 2>&1; then
    echo "-> Instalando git..."
    sudo apt update && sudo apt install -y git
fi

# 2. Clonar o actualizar el repo
if [ -d "$INSTALL_DIR/.git" ]; then
    echo "-> Ya existe en $INSTALL_DIR, actualizando (git pull)..."
    git -C "$INSTALL_DIR" pull
else
    echo "-> Clonando repositorio en $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# 3. Dependencias recomendadas
if command -v apt >/dev/null 2>&1; then
    echo "-> Instalando dependencias (tree, zenity)..."
    sudo apt update
    sudo apt install -y tree zenity
else
    echo "Aviso: no se detectó 'apt'. Instala 'tree' y 'zenity' con el gestor de tu distro."
fi

# 4. Permisos de ejecución
chmod +x "$INSTALL_DIR/matesar"

# 5. Enlazar el comando en el PATH
mkdir -p "$HOME/.local/bin"
ln -sf "$INSTALL_DIR/matesar" "$HOME/.local/bin/matesar"

if ! printf '%s' "$PATH" | grep -q "$HOME/.local/bin"; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    echo "-> Añadido ~/.local/bin al PATH en ~/.bashrc (ejecuta: source ~/.bashrc o abre otra terminal)"
fi

echo
echo "✅ Instalacion de Matesar Correcta by dezzzx"
echo "   Prueba ahora:  matesar"
echo "   Ayuda:         matesar -help"
