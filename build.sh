#!/usr/bin/env bash
# exit on error
set -o errexit


poetry --version
poetry self update 1.5.1
poetry --version
poetry install

python manage.py collectstatic --no-input
python manage.py migrate