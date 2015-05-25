#! /usr/bin/env bash

yum update -y

rpm -ivh --force http://remi.kazukioishi.net/enterprise/remi-release-6.rpm
yum install -y php php-xml --enablerepo=remi-php55

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin


cd /home/vagrant
git clone https://github.com/triple-i/AnalyzeSnavLog.git
cd /home/vagrant/AnalyzeSnavLog
/usr/local/bin/composer.phar install

