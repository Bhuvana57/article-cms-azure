#!/bin/bash
cd /home/site/wwwroot
python3 -m pip install -r requirements.txt
python3 -m gunicorn --bind 0.0.0.0:8000 --timeout 600 FlaskWebProject:app
