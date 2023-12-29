#!/bin/bash

# Define local folders
data_folders=("mdb1-data" "redis-data" "mysql-data")

# Create folder if folder doesn't exist
for folder in "data/${data_folders[@]}"; do
    if [ ! -d "./$folder" ]; then
        mkdir "./$folder"
        echo "Creada la carpeta $folder"
    else
        echo "La carpeta $folder ya existe, no es necesario crearla."
    fi
done

# Run docker compose
docker-compose --env-file .env up -d