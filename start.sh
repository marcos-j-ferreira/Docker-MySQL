#!/bin/bash

CONTAINER_NAME="db-docker"

# Nome do volume para persistência de dados
VOLUME_NAME="mysql_data"

# Caminho absoluto para o init.sql (garante portabilidade)
INIT_SQL_PATH="$(pwd)/app/init.sql"

IMAGE_NAME="db-docker:latest"

# Verifica se o volume já existe
if ! docker volume inspect $VOLUME_NAME > /dev/null 2>&1; then
  echo "[INFO] Criando volume '$VOLUME_NAME' para persistência de dados..."
  docker volume create $VOLUME_NAME
fi

# Remove o container existente, se houver
if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}$"; then
  echo "[INFO] Removendo container existente '$CONTAINER_NAME'..."
  docker rm -f $CONTAINER_NAME
fi

echo "[INFO] Iniciando novo container '$CONTAINER_NAME'..."

docker run -d \
  --name $CONTAINER_NAME \
  -e MYSQL_ROOT_PASSWORD=12345678@Aa \
  -e MYSQL_DATABASE=escola \
  -e MYSQL_USER=marcos \
  -e MYSQL_PASSWORD=senhaForte \
  -v $VOLUME_NAME:/var/lib/mysql \
  -v "$INIT_SQL_PATH":/docker-entrypoint-initdb.d/init.sql \
  -p 3306:3306 \
  $IMAGE_NAME

echo "[OK] Container '$CONTAINER_NAME' em execução."
