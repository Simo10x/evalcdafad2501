#!/bin/bash

clear

# Demande le chemin ABSOLU
echo "Où voulez-vous enregistrer le projet ? (Exemple : /c/Users/ALEXINE/Desktop)"
read -r directory

# Demande le nom du projet
echo "Quel est le nom de votre projet ?"
read -r project

# Crée le dossier parent si nécessaire
mkdir -p "$directory" || { echo "Échec création dossier"; exit 1; }

# Crée le dossier du projet ET se déplace dedans
mkdir -p "$directory/$project" && cd "$directory/$project" || exit

# Crée les fichiers dans le bon dossier
touch index.html style.css README.md

# Confirmation
echo "Projet '$project' créé avec succès dans :"
pwd