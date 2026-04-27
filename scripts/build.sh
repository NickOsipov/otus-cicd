#!/bin/bash

source .bashrc

echo "Setting up virtual environment..."
if [[ -d .venv ]]; then
    echo "Virtual environment already exists. Skipping creation."
else
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi

echo "Activating virtual environment and installing dependencies..."
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements/requirements.txt
