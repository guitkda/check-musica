#!/bin/bash
set -e

echo "Publicando aplicação Node..."

rm -rf "$DEPLOYMENT_TARGET"/*
cp -R "$DEPLOYMENT_SOURCE/app/." "$DEPLOYMENT_TARGET/"

cd "$DEPLOYMENT_TARGET"

echo "Instalando dependências..."
npm install --omit=dev

echo "Deploy concluído."
