Packages
===========

* Mysql-server-5.5
* Mysql-client
* Python-dev
* Python-pip
* Ipython
* Ipython-notebook
* Jinja2 (dep for ipython-notebook)
* Virtualenv
* Virtualenvwrapper
* libmysqlclient-dev

Mysql user details
==================

* User: root
* Pass: toor

Networking
==========

### Forwarded ports
* Mysql: guest: 3306 -> host: 3306
* Ipython-notebook: guest: 8888 -> host: 8888
* Http: guest: 8000 -> host: 8000

Usage
=====

```
# Create a new virtual enviroment and work on it
mkvirtualenv <name>
workon <name>

# Get code from project repository
````
