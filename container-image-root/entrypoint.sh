#!/bin/bash
set -x
cd /srv || exit
pip install -r requirements.txt
python3 main.py