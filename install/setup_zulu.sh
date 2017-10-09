#!/bin/bash
set -euxo pipefail

curl -sSfLo /install/zulu9.deb http://cdn.azul.com/zulu/bin/zulu9.0.0.15-jdk9.0.0-linux_amd64.deb
apt-get -y install /install/zulu9.deb
rm /install/zulu9.deb
