# Windows:

## Set local execution policy:
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

## Activate environment:
.venv\Scripts\Activate.ps1

# Linux:

## Activate environment:
source .venv/bin/activate

# Python environment:

## Compile resources:
pyside6-rcc qt/resources.qrc -o src/TradeAnalyst/resources.py

## Save resources to requirements.txt:
pip freeze > requirements.txt

## Install resources from requirements.txt:
pip install -r requirements.txt