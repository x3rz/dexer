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

echo "rlwrap for netcat history"
sudo apt-get install -y rlwrap
sudo apt install gobuster
sudo apt install seclists
sudo apt install brave
sudo apt install apt-transport-https curl\n
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list\n
sudo apt update 
sudo apt install brave-browser
go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/waybackurls
go get -u github.com/tomnomnom/gf
go get github.com/Emoe/kxss
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
GO111MODULE=on go get -u -v github.com/lc/gau
sudo apt-get install libpcap-dev
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
go get github.com/michenriksen/aquatone
go get github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/qsreplace
GO111MODULE=on go get -v github.com/hahwul/dalfox/v2
go get -u github.com/tomnomnom/anew

mkdir ~/.gf
cp -r ~/go/src/github.com/tomnomnom/gf/examples ~/.gf/
echo 'source ~/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.zshrc
echo 'source ~/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
git clone https://github.com/1ndianl33t/Gf-Patterns
mv Gf-Patterns/*.json ~/.gf
nuclei -update-templates
sudo cp ~/go/bin/* /usr/bin/

git clone https://github.com/dwisiswant0/apkleaks.git
cd apkleaks && ln -s $(pwd)/apkleaks.py /usr/bin/apkleaks