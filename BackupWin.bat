@echo off
REM HC-12/04/10
echo ===============================================
echo Sauvegarde recursive incrementale de la cle USB "NomCle"
echo dans le repertoire "X:\SauveCles\NomCle"
echo "X:" est la lettre du disque recevant la sauvegarde
echo ne sauve que les fichiers nouveaux ou + recents
echo ===============================================
REM Script � placer � la racine de la cl� USB
REM fonctionne en environnement DOS / WINDOWS
echo -----------------------------------------------
echo Datation de la sauvegarde dans le fichier
echo historique "histo.txt" :
date /T
echo -----------------------------------------------
date /T >> .\histo.txt
echo -----------------------------------------------
echo debut sauvegarde
echo -----------------------------------------------
REM il faut mettre le caract�re d'�chappement (^)
REM juste apr�s le dernier caract�re de la ligne et
REM reporter l'espace en d�but de ligne suivante :
XCOPY "."^
 "D:\SauveCles\NomCle\"^
 /C /E /D /R /H /Y
echo -----------------------------------------------
REM      OPTIONS DE XCOPY UTILISEES :
REM /C : Continue la copie m�me si des erreurs se produisent
REM /E : Copie r�cursive incluant les r�pertoires vides
REM /D : copie uniquement les fichiers dont l'heure source
REM      est plus r�cente que l'heure de destination
REM /R : copie aussi les fichiers en lecture seule
REM /H : Copie aussi les fichiers cach�s et les fichiers syst�me
REM /Y : Supprime la demande de confirmation de remplacement
REM      des fichiers de destination existants
echo -----------------------------------------------
echo SAUVEGARDE TERMINEE
echo -----------------------------------------------
REM attente d'appui sur une touche pour fermer la fenetre :
pause
