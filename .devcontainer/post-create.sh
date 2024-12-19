#!/bin/bash

# The workspaces is by default owned by root.
# We have to change this to clone additional repositories into /workspaces.
cd /workspaces
sudo chown vscode:vscode .

# Clone additional repositories
git clone https://github.com/openradx/adit-radis-shared adit-radis-shared
git clone https://github.com/openradx/adit adit
git clone https://github.com/openradx/radis radis
git clone https://github.com/openradx/adit-client adit-client
git clone https://github.com/openradx/radis-client radis-client

# Setup adit-radis-shared
cd adit-radis-shared
poetry install
npm install
poetry run invoke init-workspace

# Setup adit
cd ../adit
poetry install
poetry run invoke init-workspace

# Setup radis
cd ../radis
poetry install
poetry run invoke init-workspace

# Setup adit-client
cd ../adit-client
poetry install

# Setup radis-client
cd ../radis-client
poetry install

# Return to and setup adit-radis-workspace
cd ../adit-radis-workspace
poetry install
