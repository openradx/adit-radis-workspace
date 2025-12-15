#!/usr/bin/env bash

cd projects

###
# ADIT RADIS Shared
###
echo "Cloning 'adit-radis-shared'..."
if [ ! -d "adit-radis-shared" ]; then
    git clone https://github.com/openradx/adit-radis-shared
else echo "'adit-radis-shared' folder already exists. Cloning skipped."; fi

cd adit-radis-shared
npm install
uv sync
uv run cli --install-completion
uv run cli init-workspace --web-dev-port 8001 --postgres-dev-port 54322 --remote-debugging-port 5679
cd ..

###
# ADIT
###
echo "Cloning 'adit'..."
if [ ! -d "adit" ]; then
    git clone https://github.com/openradx/adit
else echo "'adit' folder already exists. Cloning skipped."; fi

cd adit
uv sync
uv run cli --install-completion
uv run cli init-workspace --web-dev-port 8002 --postgres-dev-port 54323 --remote-debugging-port 5680
cd ..

###
# RADIS
###
echo "Cloning 'radis'..."
if [ ! -d "radis" ]; then
    git clone https://github.com/openradx/radis
else echo "'radis' folder already exists. Cloning skipped."; fi

cd radis
uv sync
uv run cli --install-completion
uv run cli init-workspace --web-dev-port 8003 --postgres-dev-port 54324 --remote-debugging-port 5681
cd ..

cd ..
