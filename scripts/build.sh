#!/bin/bash

source .bashrc

if [[ -d .venv ]]; then
  echo "Virtual environment already exists. Skipping creation."
else
  python3 -m venv .venv
fi

source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements/requirements.txt
