#!/usr/bin/env bash

yum -y update
yum -y install setuptool
service iptables stop
chkconfig iptables off
yum -y install openssh-server
yum -y install httpd mod_ssl
chkconfig httpd on
service httpd start
yum -y install php php-common php-gd php-mysql php-xml php-mbstring
service httpd restart
yum -y install mysql mysql-server mysql-connector-java
chkconfig mysqld on
service mysqld start
mysqladmin -u root password 'password'
mkdir /vagrant/petclinic
cd /vagrant/petclinic
mkdir www logs tmp
cd /vagrant
wget https://dl.dropboxusercontent.com/u/9937469/petclinic.conf
cp /vagrant/petclinic.conf /etc/httpd/conf.d/
service httpd restart
