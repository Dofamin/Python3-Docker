#!/bin/bash
set -x
pip install -r /srv/"$@"/requirements.txt
python3 /srv/"$@"/main.py