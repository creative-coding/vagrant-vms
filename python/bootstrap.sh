#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password toor'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password toor'

# Install mysql
apt-get update
apt-get -y install mysql-server-5.5 mysql-client libmysqlclient-dev
mysql -u root -ptoor -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;"
cp /vagrant/mysql/my.cnf /etc/mysql/my.cnf
service mysql restart

# Python dev
apt-get -y install python-dev

# Install python pip
apt-get -y install python-pip

# Install ipython
pip install ipython
apt-get -y install ipython-notebook
pip install jinja2

# Virtual env
pip install virtualenv
pip install virtualenvwrapper
echo "export WORKON_HOME=\$HOME/.virtualenvs" >> /home/vagrant/.bashrc
echo "export PROJECT_HOME=/vagrant/projects" >> /home/vagrant/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc

# Install Git
apt-get -y install git
