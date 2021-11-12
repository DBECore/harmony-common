#!/bin/bash
test "$(lsb_release -si)" == "Ubuntu" || { echo "This script supports only Ubuntu"; exit 1; }
set -e

sudo apt-get -y update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-8-jdk-headless git unzip maven dpkg-dev devscripts debhelper

sudo apt-get install -y ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f
