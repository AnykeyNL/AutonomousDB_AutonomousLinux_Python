# AutonomousDB_AutonomousLinux_Python
Installer and sample project to using python3 in Autonomous Linux connect to Autonomous Database

# How to install
When you provision a new Autonomous Linux instance, it does not come with the git command installed, nor is yum configured properly for installing git. 

run:
wget https://raw.githubusercontent.com/AnykeyNL/AutonomousDB_AutonomousLinux_Python/master/install.sh
chmod 755 install.sh
./install.sh

copy and unzip your Autonomous Database Wallet file in the /home/opc/instantclient_19_3/network/admin

