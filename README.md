# adit-radis-workspace

This repository is adit-radis-workspace, a unified development workspace that brings together three related projects from the OpenRadX organization:
Purpose

It provides a centralized development environment for:

1. ADIT - A separate project focused on radiology workflows
2. RADIS - Another radiology-related project
3. adit-radis-shared - Shared code and components used by both ADIT and RADIS

## How It Works

The workspace automatically:

- Clones all three repositories into a projects/ directory during setup
- Configures a Docker-based development container with Python 3.13, PostgreSQL, and all necessary tools
- Sets up VS Code with appropriate extensions for Django/Python development
- Provides a multi-folder workspace where you can work on all three projects simultaneously

Key Technologies

- Python 3.13 with Django framework
- uv for fast Python package management
- Ruff for linting/formatting, Pyright for type checking
- PostgreSQL 17 for database support
- Docker-in-Docker for containerized workflows
- GitHub CLI for git operations

Architecture

This is essentially a meta-repository that orchestrates a multi-project development environment, making it easier to develop on ADIT and RADIS together with their shared dependencies, all while maintaining clean separation between the projects.
