spotify-client:
  pkgrepo.managed:
    - humanname: Spotify Repo
    - name: deb http://repository.spotify.com stable non-free 
    - key_url: https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub
    - keyid: BBEBDCB318AD50EC6865090613B00F1FD2C19886
    - keyserver: hkp://keyserver.ubuntu.com:80 

  pkg:
    - latest
