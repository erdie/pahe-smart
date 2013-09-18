#!/bin/bash
# Shell script sederhana untuk men-dial modem smartfren
# Diuji pada Ubuntu 12.04 Precise Pangolin
# ----------------------------------------------------------------------------
# Ditulis oleh Anna Erdiawan <http://erdinote.com/>
# (c) 2012 erdinote.com under CC-BY-SA
# <http://creativecommons.org/licenses/by-sa/3.0/>
# ----------------------------------------------------------------------------
# Terakhir diupdate: 22/Mei/2012
# ----------------------------------------------------------------------------

[[ $(id -u) -ne 0 ]] && { echo "$0: Anda harus masuk sebagai Root untuk menjalankan script ini, jalankan perintah 'sudo $0'"; exit 1; }

modprobe usbserial vendor=0x201e product=0x1022
echo "Driver berhasil dimuat !"
sleep 1
echo "Tunggu beberapa detik untuk melakukan dial !"
sleep 5
wvdialconf
wvdial smart
exit 1

