#!/usr/bin/env bash
set -xe

conda install \
    cryptography \
    dask \
    distributed \
    flake8 \
    nomkl \
    pytest \
    python=$1 \
    pyyaml \
    regex \
    ipywidgets

pip install conda-pack skein pytest-asyncio black

cd ~/dask-yarn
pip install -v --no-deps .

conda list

set +xe
