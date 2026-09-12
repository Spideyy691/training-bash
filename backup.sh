#!/bin/bash
echo "debut sauvegarde"
MA_DATE=$(date +%H-%M-%d-%m-%Y)
echo "La date du jour est : $MA_DATE"
DOSSIER_SOURCE="/home/dam/Documents/test_source"
DOSSIER_DESTINATION="/home/dam/Documents/recep_test_script"
NOM_ARCHIVE="backup-$MA_DATE.tar.gz"
echo "Le chemin est correctement ok"
if  [ -d "$DOSSIER_SOURCE" ]; then
	echo "Le dossier existe, sauvegarde en cours"
	tar -czvf "$DOSSIER_DESTINATION/$NOM_ARCHIVE" -C "$DOSSIER_SOURCE" .
else
	echo "Echec, le dossier n'existe pas. Veuillez-vérifier"
fi

if [ -d "$NOM_ARCHIVE/$DOSSIER_SOURCE" ]; then
	echo "Sauvegarde réussie :" "$NOM_ARCHIVE"
else
	echo "Echec de la sauvegarde"
fi



