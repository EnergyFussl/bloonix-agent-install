apt-get update
apt-get -y install apt-transport-https ca-certificates
wget -q -O- https://download.bloonix.de/repos/debian/bloonix.gpg | apt-key add -
echo "deb https://download.bloonix.de/repos/debian/ wheezy main" \
    >>/etc/apt/sources.list.d/bloonix.list
apt-get update
apt-cache search bloonix
apt-cache search bloonix-plugins
apt-get -y install bloonix-plugins-apache bloonix-plugins-basic bloonix-plugins-drbd bloonix-plugins-lighttpd bloonix-plugins-linux bloonix-plugins-memcached bloonix-plugins-mysql bloonix-plugins-nginx bloonix-plugins-pgsql bloonix-plugins-postfix bloonix-plugins-redis bloonix-plugins-sensors bloonix-plugins-varnish bloonix-plugins-wtrm
apt-get -y install bloonix-agent
apt-get -y install nano
nano /etc/bloonix/agent/main.conf
/etc/init.d/bloonix-agent restart
rm -fr bloonix7.sh