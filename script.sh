#!/bin/bash

# Instalar http-server si no está instalado
if ! command -v http-server &> /dev/null
then
    echo "Instalando http-server..."
    npm install -g http-server
fi

# Iniciar servidor para servir index.html
echo "Levantando servidor en http://localhost:8080"
http-server . -p 8080
