# Sublime Text install

{% set package = 'sublime_text_3_build_3126_x64.tar.bz2' %}

download_package:
  cmd.run:
    - name: |
       wget https://download.sublimetext.com/{{ package }}
       tar vxjf {{ package }}
       rm -f {{ package }}
    - cwd: /opt
    - creates: /opt/sublime_text_3/sublime_text

bin_link:
  file.symlink:
    - name: /usr/bin/sublime
    - target: /opt/sublime_text_3/sublime_text
    - requires:
      - cmd: download_package 

# TODO: Install plugins and set configurations
