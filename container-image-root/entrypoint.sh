#!/bin/bash
set -x
pip install -r /srv/"$0"/requirements.txt
python3 /srv/"$0"/main.py