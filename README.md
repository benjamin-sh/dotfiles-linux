# dotfiles-linux
Dotfiles pour configuration linux en cas de formatage



### Install wireless (broadcom ubuntu 4331)

#### Affichage des périphériques de réseau PCI
```
lspci | grep -i network
```
#### Mise à jour des paquets et installation du firmware pour les cartes broadcom

#### On Ubuntu
```
sudo apt-get update
sudo apt-get install firmware-b43-installer
```
#### On Fedora
```
sudo yum update
sudo yum install firmware-b43-installer
```

(Reboot if it does not connect post a new file from the script.)

#### No internet:
Download the b43updated.zip file to a usb flash drive then drag and drop the file to your ubuntu desktop. Right-click it and select Extract Here.

Open a terminal and do:
```
sudo mkdir /lib/firmware/b43
sudo cp Desktop/b43/*  /lib/firmware/b43
sudo modprobe -rv b43 
sudo modprobe -v b43
```


### Install Nodejs
https://nodejs.org/en/download/package-manager/


### Install Chrome


### Install Apache, Mysql

#### Apache
##### Installed on fedora

#### Mysql
##### On fedora
```
sudo yum install mysql mysql-server
```
To start MariaDB on Fedora 20, execute the following command:
```
systemctl start mariadb.service
```
Once it is done installing, you can set a root MySQL password:
```
sudo /usr/bin/mysql_secure_installation
```
