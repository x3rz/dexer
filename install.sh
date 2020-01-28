#!/bin/bash
if [ $UID != 0 ]
then
	echo "Your are not root"
	exit
fi
sudo apt update
sudo apt install -y git
sleep 1
sudo apt-get install -y sqlitebrowser
sleep 1
echo "Installing Sublime Text.."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sleep 1
sudo apt-get install -y sublime-text

echo "Installing Terminator:" 
sudo apt-get install -y terminator

echo "Installing taskwarrior for todo lists.."
sudo apt-get install -y taskwarrior

echo "Installing guake.."
sudo apt-get install -y guake

echo "Installing nmap:"
sudo apt-get install -y nmap
sleep 1

echo "Installing exiftool:"
sudo apt-get install -y exiftool

echo "Installing sqlitebrowser"
sudo apt-get install -y sqlitebrowser

sleep 1

echo "Installing Binwalk"
sudo apt-get install -y binwalk
sleep 1

echo "Installing Tesseract and Foremost.."
sudo apt install -y tesseract-ocr foremost

echo "Installing ROT11"
sudo apt install -y bsdgames

echo "Installing hexedit.."
sudo apt install -y hexedit

echo "Installing zbarimg..."
sudo apt install -y zbar-tools

sleep 2
echo "Installing qrencode..."
sudo apt install -y qrencode
sleep 2
echo "Installing pdfcrack..."
sudo apt install -y pdfcrack

echo "Downloading stegsolve.jar..."
wget "http://www.caesum.com/handbook/Stegsolve.jar" -O "stegsolve.jar"
chmod +x "stegsolve.jar"


echo "Installing fcrackzip..."
sudo apt install -y fcrackzip

echo "Installing unrar..."
sudo apt install -y unrar

echo "Installing steghide..."
sudo apt install -y steghide

echo "Installing ffmpeg..."
sudo apt install -y ffmpeg

echo  "Installing scapy"
sudo apt-get install scapy

echo "Installing tcpflow"
sudo apt-get install -y tcpflow


