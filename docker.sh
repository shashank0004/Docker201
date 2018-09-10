#!/bin/bash
cd /tmp
pt-get -y update && upgrade
apt-get install -y git
apt-get install -y openjdk-8-jdk
apt-get -y update
apt-get install -y maven
git clone https://github.com/iankesh/Employees-Sample.git
mkdir /usr/local/tomcat
cd /usr/local/tomcat
wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.33/bin/apache-tomcat-8.5.33.tar.gz
cp apache-tomcat-8.5.33.tar.gz /tmp/tomcat.tar.gz
cd /tmp
tar xvfz tomcat.tar.gz
cp -Rv /tmp/apache-tomcat-8.5.33/* /usr/local/tomcat/

