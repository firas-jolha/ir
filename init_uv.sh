#!/bin/sh

# Initialize the repository
uv init -q --description "Information Retrieval Workspace" . 

# Create a virtual environment
uv venv .venv

# Activate the venv
# . .venv/bin/activate