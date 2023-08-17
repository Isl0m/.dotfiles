#!/bin/bash
# Get the list of extensions
extensions="$(code --list-extensions)"

# Write extensions to file
echo "$extensions" > vscode-extensions.txt

# Add 'code --install-extension' to each line
sed -i -e 's/^/code --install-extension /' vscode-extensions.txt

git add .