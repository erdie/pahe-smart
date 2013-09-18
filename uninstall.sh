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

echo "Uninstall..."
sleep 1
echo "Menghapus paket wvdial"
apt-get -y remove --purge wvdial gksu libgksu2-0
echo "Paket wvdial berhasil dihapus"
sleep 1
rm -R /opt/pahe
sleep 1
rm *.deb
sleep 1
rm /usr/share/icons/smart.png
sleep 1
rm ~/Desktop/smart.desktop
sleep 1
echo "Uninstall selesai"
exit 1
