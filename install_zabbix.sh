wget https://repo.zabbix.com/zabbix/5.2/debian/pool/main/z/zabbix-release/zabbix-release_5.2-1+debian10_all.deb
dpkg -i zabbix-release_5.2-1+debian10_all.deb
apt update 


apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent

mysql -u root -p


#mysql> create database zabbix character set utf8 collate utf8_bin;
#mysql> create user zabbix@localhost identified by 'password';
#mysql> grant all privileges on zabbix.* to zabbix@localhost;
#mysql> quit; 

# zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uzabbix -p zabbix 
 

# edit  /etc/zabbix/zabbix_server.conf
# DBPassword=password

systemctl restart zabbix-server zabbix-agent apache2
systemctl enable zabbix-server zabbix-agent apache2

# connect to  http://serverip/zabbix
