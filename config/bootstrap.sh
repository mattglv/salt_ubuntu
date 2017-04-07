wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" >> /etc/apt/sources.list
apt-get update
apt-get install -y salt-minion
cp /srv/salt/base/minion/masterless.conf /etc/salt/minion.d/masterless.conf
salt-call --local state.highstate
