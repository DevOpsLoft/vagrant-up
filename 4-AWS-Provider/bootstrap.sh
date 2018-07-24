#!/bin/bash

apt-get update
apt-get install -y python3
apt-get install -y python3-pip
pip3 install --upgrade pip
pip install virtualenv
virtualenv -p python3 venv
source venv/bin/activate
