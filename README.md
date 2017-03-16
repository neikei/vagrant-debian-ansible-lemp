# Vagrant-Debian-Ansible-LEMP  
[![Build Status](https://travis-ci.org/neikei/vagrant-debian-ansible-lemp.svg?branch=master)](https://travis-ci.org/neikei/vagrant-debian-ansible-lemp)

This is just a simple LEMP setup on a Debian based Vagrantbox from the [bento project](https://github.com/chef/bento).

## Included components

| Software | Version | Tested   |
|----------|---------|----------|
| Debian   | 8.7     | &#10003; |
| Nginx    | 1.10.3  | &#10003; |
| MySQL    | 5.5.54  | &#10003; |
| PHP      | 7.1     | &#10003; |
| PHPUnit  | 6.0.9   | &#10003; |
| Composer | 1.4.1   | &#10003; |
| Node.js  | 6.10.0  | &#10003; |
| Symfony  | 3.2.4   | &#10003; |

## Requirements
 - Hypervisor
   - Virtualbox >= 5.1.14
   - Parallels >= 10
 - Vagrant >= 1.9.1
 - Vagrant Plugins:
   - vagrant-hostmanager # necessary for host entries
   - vagrant-vbguest # recommended for virtualbox users
   - vagrant-winnfsd # only for Windows

## Installation
1. git clone https://github.com/neikei/vagrant-debian-ansible-lemp.git
2. cd vagrant-debian-ansible-lemp
3. vagrant up
4. ... wait ...
5. Check the initial webpage: http://192.168.56.123 or http://lemp.dev/

## Playground access

 - Webserver: http://192.168.56.123 or http://lemp.dev/
 - MySQL: 192.168.56.123:3306
   - user: admin
   - password: changeme
   - root is allowed to access the database from localhost without a password
 - Default Symfony path: /vagrant/project
   - This path is configured as share to your local machine and should be available after the provisioning in your vagrant-debian-ansible-lemp folder.

## Advanced configuration

Check the config.yaml if you want to modify public_ip, vmname, servername and projectname.

### Project switcher

The config.yaml can be used as project switcher.

1. Change the use parameter to match the needed project identifier
2. Re-build the system with the new settings 'vagrant destroy && vagrant up'

## Changelog
16 March 2017
 - Node.js installation improvements
 - Updated Nginx to version 1.10.3 from dotdeb

14 March 2017
 - Added hostmanger for local hostfile management
 - Improved PHP, Nginx and Nodejs installation
 - Added Symfony 3.2 compatibility

27 February 2017
 - Updated Debian to version 8.7

22 February 2017
 - Added PHPUnit
 - Added tests for the Vagrantbox
 - Added Travis CI builds

21 February 2017
 - Added nodejs

17 February 2017
 - Improved the PHP provisioning

16 February 2017
 - Changed PHP repository from dotdeb.org to sury.org
 - Updated PHP to version 7.1

14 February 2017
 - Initial Commit
 - Debian 8.6, Nginx, PHP 7.0, MySQL
