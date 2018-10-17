#!/bin/bash

#date du jour 
date=$(date +%Y-%m-%d)

#permissions par defaut
umask 177

#creation du repertoire

mkdir -p /home/backup/sauvegarde

#parametre de la base de donnee

userbdd="karen"
passwordbdd="karen"
hostbdd="localhost"
namebdd="mariadbk"

#sauvegarde de la base de donnee

mysqldump --user=karen --password=karen --databases mariadbk > /home/backup/sauvegarde/madb-$date.sql
