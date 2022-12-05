#!/bin/bash


# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner


# Redemarrer le service sshd 

systemctl restart sshd 

# Création d'utilisateur
printf "Donnez le nom de l'utilisateur à créer :\n"
read user
useradd -m -d/home/$user -s /bin/bash -c "$user" $user && passwd $user && usermod -aG sudo $user && echo -e $user "est devenu un superUser !\n"

# Insertion de la clé public 

printf "Entrez votre clé public : \n"

read key

echo $key >> tmp.txt

cat tmp.txt >> ~/.ssh/authorized_keys && 
