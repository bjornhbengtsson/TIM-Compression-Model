#!/usr/bin/env bash
set -euo pipefail

echo "TIM Compression Model setup"

if [[ ! -f "TIM_Compression_Model.ipynb" ]]; then
  echo "Run this script from inside the tim-compression-model folder."
  exit 1
fi

if ! command -v python >/dev/null 2>&1; then
  echo "Python was not found on PATH."
  echo "Install Python 3, then reopen Git Bash."
  exit 1
fi

if [[ ! -d ".venv" ]]; then
  python -m venv .venv
fi

# Git Bash on Windows
source .venv/Scripts/activate

python -m pip install --upgrade pip
pip install -r requirements.txt

if [[ ! -d ".git" ]]; then
  git init
  git branch -M main
fi

git status

echo
echo "Setup complete."
echo "Activate later with: source .venv/Scripts/activate"
echo "Start Jupyter with: jupyter lab"
