#!/usr/bin/env bash

uv sync

cd projects

###
# ADIT RADIS Shared
###
echo "Cloning 'adit-radis-shared'..."
if [ ! -d "adit-radis-shared" ]; then
    git clone https://github.com/openradx/adit-radis-shared
else echo "'adit-radis-shared' folder already exists. Cloning skipped."; fi

cd adit-radis-shared
bash .devcontainer/post-create.sh
cd ..

###
# ADIT
###
echo "Cloning 'adit'..."
if [ ! -d "adit" ]; then
    git clone https://github.com/openradx/adit
else echo "'adit' folder already exists. Cloning skipped."; fi

cd adit
bash .devcontainer/post-create.sh
cd ..

###
# RADIS
###
echo "Cloning 'radis'..."
if [ ! -d "radis" ]; then
    git clone https://github.com/openradx/radis
else echo "'radis' folder already exists. Cloning skipped."; fi

cd radis
bash .devcontainer/post-create.sh
cd ..

cd ..
