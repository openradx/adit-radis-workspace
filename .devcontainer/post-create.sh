#!/bin/bash

# The workspaces is by default owned by root.
# We have to change this to clone additional repositories into /workspaces.
sudo chown vscode:vscode /workspaces

# Clone additional repositories
git clone https://github.com/openradx/adit-radis-shared /workspaces/adit-radis-shared
git clone https://github.com/openradx/adit /workspaces/adit
git clone https://github.com/openradx/radis /workspaces/radis
git clone https://github.com/openradx/adit-client /workspaces/adit-client
git clone https://github.com/openradx/radis-client /workspaces/radis-client

# Setup adit-radis-shared
cd /workspaces/adit-radis-shared
poetry install
npm install
poetry run invoke init-workspace

# Setup adit
cd /workspaces/adit
poetry install
poetry run invoke init-workspace

# Setup radis
cd /workspaces/radis
poetry install
poetry run invoke init-workspace

# Setup adit-client
cd /workspaces/adit-client
poetry install

# Setup radis-client
cd /workspaces/radis-client
poetry install

# Return to and setup adit-radis-workspace
cd /workspaces/adit-radis-workspace
poetry install
