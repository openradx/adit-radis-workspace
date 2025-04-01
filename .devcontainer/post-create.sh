#!/usr/bin/env bash

uv sync

cd projects

if [ ! -d "adit-radis-shared" ]; then
    echo "Setup 'adit-radis-shared'..."
    git clone https://github.com/openradx/adit-radis-shared
    cd adit-radis-shared
    bash .devcontainer/post-create.sh
    cd ..
else
    echo "'adit-radis-shared' already exists. Skipping."
fi

if [ ! -d "adit" ]; then
    echo "Setup 'adit'..."
    git clone https://github.com/openradx/adit
    cd adit
    bash .devcontainer/post-create.sh
    cd ..
else
    echo "'adit' already exists. Skipping."
fi

if [ ! -d "radis" ]; then
    echo "Setup 'radis'..."
    git clone https://github.com/openradx/radis
    cd radis
    bash .devcontainer/post-create.sh
    cd ..
else
    echo "'radis' already exists. Skipping."
fi

cd ..
