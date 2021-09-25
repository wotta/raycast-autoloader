#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title autoload
# @raycast.mode inline

# Optional parameters:
# @raycast.icon ↔️
# @raycast.packageName wotta/raycast-autoloader
# @raycast.needsConfirmation false

# Documentation:
# @raycast.description This script command helps you to autoload Raycast scripts from a specific folder.
# @raycast.author Wouter van Marrum
# @raycast.authorURL https://github.com/wotta

for dir in */
do
  dirName=${dir%*/}

  if [[ -f "${dir}${dirName}.sh" ]]
  then
    echo "Creating symlink for ${PWD}/${dir}${dirName}.sh >>> ${PWD}/${dirName}.sh"

    ln -sf "${PWD}/${dir}${dirName}.sh" "${PWD}/${dirName}.sh"
#    cp -f "${PWD}/${dir}${dirName}.sh" "${PWD}/${dirName}.sh"
  else
#    echo "No script found for ${dirName} in ${dir}"
  fi
done