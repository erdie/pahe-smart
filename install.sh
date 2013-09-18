#!/bin/bash
#!/bin/bash
# Shell script sederhana untuk instalasi dan men-dial modem smartfren
# Diuji pada Ubuntu 13.04 Raring Ringtail 32 bit
# ----------------------------------------------------------------------------
# Ditulis oleh Anna Erdiawan <http://erdinote.com/>
# (c) 2013 erdinote.com under CC-BY-SA
# <http://creativecommons.org/licenses/by-sa/3.0/>
# ----------------------------------------------------------------------------
# Terakhir diupdate: 8/Juni/2013
# ----------------------------------------------------------------------------
[[ $(id -u) -ne 0 ]] && { echo "$0: Anda harus masuk sebagai Root untuk menjalankan script ini, jalankan perintah 'sudo $0'"; exit 1; }


echo "Melakukan instalasi..."
sleep 1
echo "Ekstrak paket wvdial"
tar -xzvf wvdial_raring.tar.gz
echo "Ekstrak selesai"
sleep 1
echo "Instalasi paket wvdial"
sudo dpkg -i *.deb
echo "Instalasi selesai"
sleep 1
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
exit 1
