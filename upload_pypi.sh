#!/bin/bash

version=$(sed -n "s/_version = '\(.*\)'/\1/p" openevse.py)
python3 setup.py sdist
python3 setup.py bdist_wheel
twine upload dist/*-$version*
