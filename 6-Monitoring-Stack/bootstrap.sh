#!/usr/bin/env bash

tar xvfz /vagrant/prometheus-*.tar.gz
cd prometheus-*
nohup ./prometheus --config.file=prometheus.yml > /dev/null 2>&1 &

echo "Getting updates..."
apt-get update

echo "Installing Python..."
apt-get install -y python python-pip python-dev libcairo2-dev libffi-dev build-essential

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing virtualenv..."
pip install virtualenv

echo "Setting virtual environment..."
virtualenv /opt/graphite
source /opt/graphite/bin/activate
