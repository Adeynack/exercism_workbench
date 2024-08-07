#!/usr/bin/env bash
if [ ! -f ~/.config/exercism/user.json ]; then
  read -s -p "Exercism Token (https://exercism.org/settings/api_cli) (won't be displayed): " exercism_token
  exercism configure --token=${exercism_token} --workspace=/workspaces/${LOCAL_WORKSPACE_FOLDER_BASENAME}/exercism-workspace
fi
