# salt_ubuntu
```bash
apt-get install -y git
git clone https://github.com/mattglv/salt_ubuntu.git /srv/salt/base
bash /srv/salt/base/config/bootstrap.sh
salt-call --local state.highstate
```
