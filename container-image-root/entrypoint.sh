#!/bin/bash
set -x
sleep 10m
pip install -r /srv/requirements.txt
python3 /srv/main.py