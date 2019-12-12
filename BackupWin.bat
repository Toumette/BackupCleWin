@echo off
REM (c) Henri 12/04/10
echo ===============================================
echo Sauvegarde recursive incrementale de la cle USB "NomCle"
echo dans le repertoire "X:\SauveCles\NomCle"
echo "X:" est la lettre du disque recevant la sauvegarde
echo Ne sauve que les fichiers nouveaux ou + recents
echo Les fichiers effaces dans la source ne sont pas
echo effaces dans la sauvegarde
echo ===============================================
REM Script à placer à la racine de la clé USB
REM fonctionne en environnement DOS / WINDOWS
echo -----------------------------------------------
echo Datation de la sauvegarde dans le fichier
echo historique "histo.txt" :
date /T
echo -----------------------------------------------
date /T >> .\histo.txt
echo -----------------------------------------------
echo debut de la sauvegarde
echo -----------------------------------------------
REM il faut mettre le caractère d'échappement (^)
REM juste après le dernier caractère de la ligne et
REM reporter l'espace en début de ligne suivante :
XCOPY "."^
 "D:\SauveCles\NomCle\"^
 /C /E /D /R /H /Y
echo -----------------------------------------------
REM      OPTIONS DE XCOPY UTILISEES :
REM /C : Continue la copie même si des erreurs se produisent
REM /E : Copie récursive incluant les répertoires vides
REM /D : Copie uniquement les fichiers dont l'heure source
REM      est plus récente que l'heure de destination
REM /R : Copie aussi les fichiers en lecture seule
REM /H : Copie aussi les fichiers cachés et les fichiers système
REM /Y : Supprime la demande de confirmation de remplacement
REM      des fichiers de destination existants
echo -----------------------------------------------
echo SAUVEGARDE TERMINEE
echo -----------------------------------------------
REM attente d'appui sur une touche pour fermer la fenetre :
pause
