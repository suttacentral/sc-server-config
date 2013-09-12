SuttaCentral VPS Server Configuration
=====================================

Prerequisites
-------------

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://downloads.vagrantup.com/)
- [Virtualenv and Virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/install.html)

1st Time Setup
--------------

    git clone git@github.com:suttacentral/sc-server-config.git
    cd sc-server-config
    mkvirtualenv sc-server-config -p `which python2.7` -r requirements.txt

Running Locally
---------------

***This will download a lot of packages so a reasonably fast Internet connection
   is highly recommended!***

First, put these entries in your `/etc/hosts`:

    192.168.33.10 vps.sc.local
    192.168.33.10 git.sc.local
    192.168.33.10 wiki.sc.local
    192.168.33.10 bugs.sc.local
    192.168.33.10 staging.sc.local
    192.168.33.10 sc.local
    192.168.33.10 phpmyadmin.sc.local

Then...

- Copy the files from `/root/sc-backups` on the VPS into the `seeds` folder.
- Copy `/root/sc-secrets.yml` on the VPS to `secrets.yml`.
- Run `make` and go grab a cup of coffee (or eighteen...).

If everything goes well, you should be able to use all the resources, e.g., <http://sc.local/>.