#!/bin/bash


clear


function mainoption(
echo ""
echo "------------BENJI's Package Installer---------------"
echo "Choose which packages do you want to install."
echo ""
echo 	[1]For Malware Development
echo	[2]For Malware Analysis
echo ""
echo "-----------------------------------------------------"
echo ""
read -p 'option>' opt




if [ $opt == '1' ]
then
echo ""
echo "Choose Distribution"
echo "[1]Kali-Linux"
echo "[2]CentOS/Fedora"
echo "[3]Ubuntu"


read -p 'option>' distro

if [ $distro == '1' ]
then
echo your distribution is kali linux
elif [ $distro == '2' ]
then

#for malware development
sudo apt-get -y update && sudo apt-get -y upgrade

#install python3 and go
sudo apt-get -y install python3 && sudo apt-get -y install golang-go 


#install rust
sudo apt-get -y install rustc 


echo your distribution is fedora

sudo dnf install gcc openssl-devel bzip2-devel-sqlite-devel


cd /usr/src
wget https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz
tar xzf Python-3.11.3.tgz
cd Python-3.11.3
sudo ./configure --enable-optimizations
sudo make altinstall

#remove the downloaded archive
sudo rm /usr/src/Python-3.11.3.tgz



elif [ $distro == '3' ]
then
sudo apt-get install build-essential libncursesw5-dev libreadline5-dev libssl-dev libgdbm-dev libc6-dev libsqlite3-dev tk-dev
wget http://www.python.org/ftp/python/3.x/Python-3.x.tar.bz2
tar -xjf Python-3.xtar.bz2 cd Python-3.x
./configure --prefix=/opt/python3
make
sudo make install
$/opt/python3/bin/python3 -V Python 3.x
#!/opt/python3/bin/python3

echo Packages successfully installed!
exit


else 
echo Command Unknown
mainoption
fi






elif [ $opt == '2' ]
then



echo ""
echo "Choose Distribution"

echo "[1]Kali-Linux"
echo "[2]Fedora/CentOS"
echo "[3]Ubuntu"


echo Enter option
read -p 'option>' distro2

if [ $distro2 == '1' ]
then




#for reverse-engineering

#install openjdk-11 which is the requirement for ghidra
sudo apt-get -y  install openjdk-11-jdk

#install ghidra
ghidra


#ollydbg
sudo apt-get -y install ollydbg



#strace
sudo apt-get -y  install strace



elif [ $distro2 == '2' ]
then
sudo dnf install snapd
sudo ln-s /var/lib/snapd/snap /snap


sudo snap install ghidra



elif [ $distro2 == '3' ]
then

sudo apt update
sudo apt install default-jdk


sudo adduser --system --home /home/ghidra --group --disabled-password --disabled-login ghidra
sudo mkdir /home/ghdira/repositories
sudo chown ghidra:ghidra /home/ghidra/repositories
cd /home/ghidra
sudo unzip /home/kali/Documents/ghidra_version.zip
chown -R ghidra:ghidra ghidra_version


else
echo ""
echo Command Unknown
echo ""
mainoption


fi

elif [ $opt == 'exit' ]
then
exit

else


echo Command Unknown!-Try again!






mainoption




fi
)
mainoption


