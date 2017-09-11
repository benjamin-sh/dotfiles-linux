# dotfiles-linux
Dotfiles pour configuration linux en cas de formatage

#Affichage des périphériques de réseau PCI
```
lspci | grep -i network
```

#Installation install wireless (broadcom ubuntu 4331)
```
sudo apt-get update
sudo apt-get install firmware-b43-installer
```
Reboot if it does not connect post a new file from the script.

No internet:

Download the b43updated.zip file to a usb flash drive then drag and drop the file to your ubuntu desktop. Right-click it and select Extract Here.

Open a terminal and do:
```
sudo mkdir /lib/firmware/b43
sudo cp Desktop/b43/*  /lib/firmware/b43
sudo modprobe -rv b43 
sudo modprobe -v b43
```
