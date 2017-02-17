# Vagrant-Debian-Ansible-LEMP

This is just a simple LEMP setup with nginx, php7 and mysql on a Debian based Vagrantbox from the bento project.

## Requirements
1. Virtualbox >= 5.1.14
2. Vagrant >= 1.9.1
3. Vagrant Plugins:
 - vagrant-vbguest (recommended)
 - vagrant-winnfsd (Windows only)

## Installation
1. git clone https://github.com/neikei/vagrant-debian-ansible-lemp.git
2. cd vagrant-debian-ansible-lemp
3. vagrant up
4. ... wait ...
5. Check the phpinfo(): http://192.168.56.123

## Playground access

 - Webserver: http://192.168.56.123
 - MySQL: 192.168.56.123:3306
   - user: admin
   - password: changeme
   - root is allowed to access the database from localhost without a password

Place your stuff in the subfolder web, because the folder is configured as share into the webserver root path in your VM.

## Changelog
18 February 2017
 - Improved the PHP provisioning

16 February 2017
 - Changed PHP repository from dotdeb.org to sury.org
 - Updated PHP to version 7.1

14 February 2017
 - Initial Commit
 - Debian 8.6, Nginx, PHP 7.0, MySQL
