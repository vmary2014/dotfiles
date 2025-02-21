#!/bin/bash

brew install colima
brew install docker docker-compose
mkdir -p ~/.docker/cli-plugins
mkdir -p ~/.colima/default
ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

cat <<< '
provision:
  - mode: system
    script: |
      CERTS="/Users/$(whoami)/Certificates"
      cp \${CERTS}/* /usr/local/share/ca-certificates/
      update-ca-certificates
      systemctl daemon-reload
      systemctl restart docker
' > ~/.colima/default/colima.yaml