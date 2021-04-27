 echo "Installing Sublime"
 curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
 echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
 sudo pacman -Syu sublime-text
 sudo pacman -Syu sqlitebrowser
 sudo pacman -Syu taskwarrior
 sudo pacman -Syu guake
 sudo pacman -Syu nmap

echo "Installing exiftool:"
sudo pacman -Syu  exiftool

echo "Installing sqlitebrowser"
sudo pacman -Syu  sqlitebrowser

sleep 1

echo "Installing Binwalk"
sudo pacman -Syu  binwalk
sleep 1

echo "Installing Tesseract and Foremost.."
sudo pacman -Syu  tesseract-ocr foremost

echo "Installing ROT11"
sudo pacman -Syu  bsdgames

echo "Installing hexedit.."
sudo pacman -Syu  hexedit

echo "Installing zbarimg..."
sudo pacman -Syu  zbar-tools

sleep 2
echo "Installing qrencode..."
sudo pacman -Syu  qrencode
sleep 2
echo "Installing pdfcrack..."
sudo pacman -Syu  pdfcrack

echo "Downloading stegsolve.jar..."
wget "http://www.caesum.com/handbook/Stegsolve.jar" -O "stegsolve.jar"
chmod +x "stegsolve.jar"


echo "Installing fcrackzip..."
sudo pacman -Syu  fcrackzip

echo "Installing unrar..."
sudo pacman -Syu  unrar

echo "Installing steghide..."
sudo pacman -Syu  steghide

echo "Installing ffmpeg..."
sudo pacman -Syu  ffmpeg

echo  "Installing scapy"
sudo pacman -Syu scapy

echo "Installing tcpflow"
sudo pacman -Syu  tcpflow

echo "rlwrap for netcat history"
sudo pacman -Syu  rlwrap
sudo pacman -Syu gobuster

echo "downloading pspy64 and pspy32 for monetring cronjobs"

sudo pacman -S docker
sudo pacman -Syu wireshark-qt
sudo pacman -Syu openvpn
sudo pip install pycryptodome
sudo pacman -Syu foremost
sudo pacman -Syu hexedit
sudo pacman -Syu pdfcrack
sudo pacman -Syu fcrackzip
sudo pip install pwntools
sudo pip install scapy
sudo pacman -Syu filezilla
sudo pamac install exploitdb
sudo pamac install proxychains-ng
# Pentesting scripts
mkdir pentest
git clone https://github.com/rebootuser/LinEnum.git && cd LinEnum && mv LinEnum.sh ../ && cd .. && rm -r LinEnum
sudo pacman -Syu nmap
sudo pacman -Syu john
sudo pacman -Syu dirb
sudo pacman -Syu dirbuster

# add the SecList and other for better reach and approach
sudo pacman -S seclists
sudo pacman -S hydra
sudo pacman -S nikto
sudo pacman -S metasploit


sudo pacman -Syu telegram-desktop

# xsrfprobe for automate CSRF
pip3 install xsrfprobe
# automate SSTI
sudo pacman -Syu tplmap
#installing webshells
sudo pacman -S webshells
#installing pentestmonkey webshells
sudo git clone https://github.com/pentestmonkey/php-reverse-shell.git /usr/share/webshells/pentestMonkey
# installing windows required webshells
sudo pacman -S windows-binaries
sudo pacman -S steghide
# bruteforce jwt tokens	
git clone https://github.com/lmammino/jwt-cracker.git 
# powersploit for windows exploitation

git cloen https://github.com/PowerShellMafia/PowerSploit.git

###############
# RTMF decoder#
###############

git clone https://github.com/ribt/dtmf-decoder.git
cd dtmf-decoder/
sudo python3 -m pip install -r requirements.txt --upgrade
chmod +x dtmf.py
sudo cp dtmf.py /usr/local/bin/dtmf