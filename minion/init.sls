salt-minion:
  pkgrepo.managed:
    - humanname: SaltStack Repo
    - name: deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main
    - dist: trusty
    - key_url: https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub

  pkg:
    - latest

  service.dead:
    - enable: False

/etc/salt/minion.d/masterless.conf:
  file.managed:
    - source: salt://minion/masterless.conf
