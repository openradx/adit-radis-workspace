#!/bin/bash

uv sync
uvx typer --install-completion

cd projects

if [ ! -d "adit-radis-shared" ]; then
    echo "Setup 'adit-radis-shared'..."
    git clone https://github.com/openradx/adit-radis-shared
    cd adit-radis-shared
    uv sync
    npm install
    uv run ./cli.py init-workspace
    cd ..
else
    echo "'adit-radis-shared' already exists. Skipping."
fi

if [ ! -d "adit" ]; then
    echo "Setup 'adit'..."
    git clone https://github.com/openradx/adit
    cd adit
    uv sync install
    uv run ./cli.py init-workspace
    cd ..
else
    echo "'adit' already exists. Skipping."
fi

if [ ! -d "radis" ]; then
    echo "Setup 'radis'..."
    git clone https://github.com/openradx/radis
    cd radis
    uv sync
    uv run ./cli.py init-workspace
    cd ..
else
    echo "'radis' already exists. Skipping."
fi

if [ ! -d "adit-client" ]; then
    echo "Setup 'adit-client'..."
    git clone https://github.com/openradx/adit-client
    cd adit-client
    uv sync
    uv run ./cli.py init-workspace
    cd ..
else
    echo "'adit-client' already exists. Skipping."
fi

if [ ! -d "radis-client" ]; then
    echo "Setup 'radis-client'..."
    git clone https://github.com/openradx/radis-client
    cd radis-client
    uv sync
    uv run ./cli.py init-workspace
    cd ..
else
    echo "'radis-client' already exists. Skipping."
fi

cd ..
