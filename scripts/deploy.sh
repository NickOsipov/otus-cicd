#!/bin/bash

source .bashrc

export APP_PID=$(lsof -ti:8501) || true
kill $APP_PID || true

source .venv/bin/activate
python3 src/train.py
nohup streamlit run src/app.py --server.port 8501 >> app.log 2>&1 &
