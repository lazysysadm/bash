#!/bin/bash
#***lazysysadm***

#------------------------------------------------------------------
#Ce script est utile si un serveur vnc est dejà installe comme "vncserver" et simplifie son demarrage
#Il faut modifier le fichier ~/.vnc/xstartup et y ajouter "exec /usr/bin/[nomdubureau_exemple:xfce,cinnamon,etc]"
#Et commenter "#exec /etc/X11/xinit/xinitrc"
#------------------------------------------------------------------

#variable qui contient le parametre
param1=${1}
#verification de la presence de un parametre. Lorsque aucune parametre n'est present on sort.
if [ "${#}" -eq 0 ]
then
	echo "Pas de parametres"
	exit 1
fi
#Choix actions a appliquer selon le parametre
case ${param1} in
    start)
	    vncserver :1 -geometry 1024x768 -depth 24
    ;;
    stop)
	    vncserver -kill :1
    ;;
    *)
           echo "Hum...pas de commande reconnue ! Sorry !"
           echo "Usage ${0} start | stop"
	   exit 1
    ;;
esac
