#! /bin/sh
puname="puppet"
sed -i "2i$1 $2" /etc/hosts
sed -i "2i$1 $puname" /etc/hosts
http://pm.puppetlabs.com/puppet-agent/2016.1.2/1.4.2/repos/deb/wily/PC1/puppet-agent_1.4.2-1wily_amd64.deb
apt-get install puppet -y
puppet resource service puppet ensure=running enable=true
