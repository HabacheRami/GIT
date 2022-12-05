#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp config_files/ssh/sshd_config /etc/ssh/sshd_config

cp config_files/ssh/Banner /etc/Banner


# Redemarrer le service sshd 

systemctl restart sshd 

