SuttaCentral VPS Server Configuration
=====================================

Prerequisites
-------------

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://downloads.vagrantup.com/)
- [Ansible](http://www.ansibleworks.com/docs/gettingstarted.html)

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