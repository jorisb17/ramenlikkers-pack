#!/usr/bin/env bash
set -euo pipefail

VERSION="${VERSION:-dev}"
PACK_NAME="${PACK_NAME:-my-modpack}"
OUT_DIR="dist"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

packwiz modrinth export --output "${OUT_DIR}/${PACK_NAME}-${VERSION}.mrpack"

echo "Built ${OUT_DIR}/${PACK_NAME}-${VERSION}.mrpack"
