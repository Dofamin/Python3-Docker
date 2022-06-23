#!/bin/bash
set -x
pip install -r /srv/"$1"/requirements.txt
python3 /srv/"$1"/main.py