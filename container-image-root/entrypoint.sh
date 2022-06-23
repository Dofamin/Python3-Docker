#!/bin/bash
set -x
ls /srv/
sleep 10s
pip install -r /srv/"$1"/requirements.txt
python3 /srv/"$1"/main.py