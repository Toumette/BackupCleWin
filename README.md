# BackupCleWin

### Script simple et commenté de sauvegarde récursive et incrémentale des données stockées sur une clé USB sous Windows (script de type ".bat")

* La totalité de la clé USB est copiée sur le disque dur (ou sur un autre support : disque externe, autre clé...).

* Les fichiers déjà présents dans la sauvegarde ne sont pas retransférés sauf s'ils ont été modifiés entre temps.

* Les fichiers effacés dans la source ne sont pas effacés dans la sauvegarde ce qui peut être utile mais nécessite un support de sauvegarde de taille suffisante.

* Lancement par double-clic sur le fichier exécutable "BackupWin.bat" placé à la racine de la clé.

* Ouvre une fenêtre console temporaire permettant de suivre le déroulement de la sauvegarde et de s'assurer de sa bonne exécution.

* Crée et alimente un fichier de journalisation "histo.txt" précisant toutes les dates des sauvegardes exécutées. Ce journal est présent à la racine de la clé et sur la sauvegarde.

* Avant le 1er lancement du script, le configurer en précisant la lettre du lecteur recevant la sauvegarde ainsi que le répertoire racine de la sauvegarde sur ce lecteur.

* Testé sous Windows Seven Edition familiale premium.

---
_Ce script, volontairement "sur-commenté", s'adresse aux débutants en scripting BAT._
_© Henri 11/12/19_
