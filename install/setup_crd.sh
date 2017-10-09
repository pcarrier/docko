#!/bin/bash
set -euxo pipefail

curl -sSfLo /install/crd.deb https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
apt-get -y install /install/crd.deb
rm /install/crd.deb
