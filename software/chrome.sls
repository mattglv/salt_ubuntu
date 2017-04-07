google-chrome:
  cmd.run:
    - name: |
        mkdir -p /opt/google/chrome
        cd /opt/google/chrome
        wget -q http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_57.0.2987.133-1_amd64.deb
        dpkg --install google-chrome-stable_57.0.2987.133-1_amd64.deb
    - unless: test -x /usr/bin/google-chrome
