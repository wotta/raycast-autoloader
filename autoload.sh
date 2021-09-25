#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title autoload
# @raycast.mode compact

# Optional parameters:
# @raycast-autoloader.icon ↔️
# @raycast-autoloader.packageName wotta/raycast-autoloader
# @raycast-autoloader.needsConfirmation false

# Documentation:
# @raycast-autoloader.description This script command helps you to autoload Raycast scripts from a specific folder.
# @raycast-autoloader.author Wouter van Marrum
# @raycast-autoloader.authorURL https://github.com/wotta

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