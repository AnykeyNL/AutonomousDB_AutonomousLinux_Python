clear

echo "Installing python3 on Oracle Autonomous Linux"
echo "============================================="
echo " "
sudo yum-config-manager --enable ol7_latest
sudo yum install -y python3

echo "Installing Oracle Instant client 19.3 for DB connection"
echo "======================================================="
echo " "
wget https://download.oracle.com/otn_software/linux/instantclient/193000/instantclient-basic-linux.x64-19.3.0.0.0dbru.zip
unzip instantclient-basic-linux.x64-19.3.0.0.0dbru.zip
sudo sh -c "echo /home/opc/instantclient_19_3 > /etc/ld.so.conf.d/oic.conf"
sudo ldconfig

echo "Installing python3 cx_Oracle library"
echo "===================================="
echo " "
sudo python3 -m pip install cx_Oracle --upgrade

echo " "
echo "==== DONE ==="
echo "Unzip your Autonomous DB wallet file in /home/opc/instantclient_19_3/network/admin"
echo " " 
echo "Modify the dbtest.py file have the correct password"
echo "Run: python3 dbtest.py to see if you can connect"



