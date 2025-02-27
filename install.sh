#!/bin/bash
set -euo pipefail

REPO_URL="https://github.com/sebmandal/sm.git"
INSTALL_DIR="$HOME/.sm"
ZSHRC="$HOME/.zshrc"
BIN_DIR="$INSTALL_DIR/bin"

mkdir -p "$BIN_DIR"

ln -sf "$INSTALL_DIR/sm.sh" "$BIN_DIR/sm"

if [ -d "$INSTALL_DIR" ]; then
	echo "[INFO] Updating sm package in $INSTALL_DIR..."
	(cd "$INSTALL_DIR" && git pull)
else
	echo "[INFO] Cloning sm package into $INSTALL_DIR..."
	git clone "$REPO_URL" "$INSTALL_DIR"
fi

# Ensure sm.sh is executable
chmod +x "$INSTALL_DIR/sm.sh"

PATH_LINE="export PATH=\"$HOME/.sm/bin:$PATH\""

if grep -Fq "$PATH_LINE" "$ZSHRC"; then
	echo "[INFO] ~/.zshrc already contains the sm package path."
else
	echo "[INFO] Adding sm package path to ~/.zshrc..."
	cp "$ZSHRC" "${ZSHRC}.backup.$(date +%Y%m%d%H%M%S)"
	{
		echo ""
		echo "# Added by Sebastian Mandal's Personal Utility Package (sm)"
		echo "$PATH_LINE"
	} >>"$ZSHRC"
fi

echo "[INFO] Installation complete. Please restart your terminal or run:"
echo "       source ~/.zshrc"
