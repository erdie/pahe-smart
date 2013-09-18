#!/bin/bash
# Shell script sederhana untuk instalasi dan men-dial modem smartfren
# Diuji pada Ubuntu 13.04 Raring Ringtail 32 bit
# ----------------------------------------------------------------------------
# Ditulis oleh Anna Erdiawan <http://erdinote.com/>
# (c) 2013 erdinote.com under CC-BY-SA
# ----------------------------------------------------------------------------
# Terakhir diupdate: 8/Juni/2013
# ----------------------------------------------------------------------------
[[ $(id -u) -ne 0 ]] && { echo "$0: Anda harus masuk sebagai Root untuk menjalankan script ini, jalankan perintah 'sudo $0'"; exit 1; }

lagi='y'
while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do
   clear
echo -n "Menu yang tersedia untuk Anda, status: "; whoami
echo "1. Install Launcher Smartfren Dialer untuk Ubuntu 12.04, 12.10, atau 13.04"
echo "2. Install Launcher Smartfren Dialer untuk Elementary OS Luna"
echo "3. Hapus Launcher Smartfren Dialer untuk Ubuntu 12.04, 12.10, atau 13.04"
echo "4. Hapus Launcher Smartfren Dialer untuk Elementary OS Luna"
echo "5. Keluar"
read -p "Pilihan Anda [1-5] :" pil;

if [ $pil -eq 1 ]; 
then
	echo "Melakukan instalasi..."
	echo "Menyalin konfigurasi wvdial"
	sudo cat input > /etc/wvdial.conf
	echo "Menyalin konfigurasi selesai"
	sleep 1
	mkdir /opt/pahe
	sleep 1
	cp smart.sh /opt/pahe
	sleep 1
	chmod 755 /opt/pahe/smart.sh
	sleep 1
	cp smart.png /usr/share/icons
	sleep 1
	cp smart.desktop ~/Desktop
	sleep 1
	chmod 755 ~/Desktop/smart.desktop
	sleep 1
	echo "Instalasi selesai"
	echo "Launcher terdapat pada desktop"
elif [ $pil -eq 2 ]; 
then
	echo "Melakukan instalasi..."
	echo "Menyalin konfigurasi wvdial"
	sudo cat input > /etc/wvdial.conf
	echo "Menyalin konfigurasi selesai"
	sleep 1
	mkdir /opt/pahe
	sleep 1
	cp smart.sh /opt/pahe
	sleep 1
	chmod 755 /opt/pahe/smart.sh
	sleep 1
	cp smart.png /usr/share/icons
	sleep 1
	cp smart.desktop /usr/share/applications
	sleep 1
	chmod 755 /usr/share/applications/smart.desktop
	sleep 1
	echo "Instalasi selesai"
	echo "Silakan akses di Appplication > System > Smartfren Dialler"
elif [ $pil -eq 3 ]; 
then
	echo "Uninstall..."
	sleep 1
	rm -R /opt/pahe
	sleep 1
	rm /usr/share/icons/smart.png
	sleep 1
	rm ~/Desktop/smart.desktop
	sleep 1
	echo "Uninstall selesai"
elif [ $pil -eq 4 ]; 
then
	echo "Uninstall..."
	sleep 1
	rm -R /opt/pahe
	sleep 1
	rm /usr/share/icons/smart.png
	sleep 1
	rm /usr/share/applications/smart.desktop
	sleep 1
	echo "Uninstall selesai"
elif [ $pil -eq 5 ]; 
then
   exit 0
else
   echo ""
   echo "Maaf, menu tidak tersedia !"
   exit 1
fi
echo -n "Kembali ke menu (y/t) :";
read lagi;
done
