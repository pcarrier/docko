#!/bin/bash
set -euxo pipefail

mkdir -p /opt/idea
curl -sSfL https://download-cf.jetbrains.com/idea/ideaIU-2017.2.5-no-jdk.tar.gz | tar xz -C /opt/idea --strip-components=1
