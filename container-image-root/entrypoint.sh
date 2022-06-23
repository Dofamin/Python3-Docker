#!/bin/bash
set -x
cd /srv || exit
ls
pip install -r requirements.txt
python3 main.py