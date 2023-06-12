#!/bin/bash

# Variables des serveurs
adresse_ip_dev="adresse_ip_dev"
utilisateur_dev="utilisateur_dev"
adresse_ip_test="adresse_ip_test"
utilisateur_test="utilisateur_test"
adresse_ip_prod="adresse_ip_prod"
utilisateur_prod="utilisateur_prod"

# Installation des dépendances pour le serveur de développement
echo "Installation des dépendances sur le serveur de développement..."
ssh $utilisateur_dev@$adresse_ip_dev "sudo apt update && sudo apt install -y ansible nginx mysql-server"

# Installation des dépendances pour le serveur de test
echo "Installation des dépendances sur le serveur de test..."
ssh $utilisateur_test@$adresse_ip_test "sudo apt update && sudo apt install -y ansible nginx mysql-server"

# Installation des dépendances pour le serveur de production
echo "Installation des dépendances sur le serveur de production..."
ssh $utilisateur_prod@$adresse_ip_prod "sudo apt update && sudo apt install -y ansible nginx mysql-server"

echo "Installation des dépendances terminée."
