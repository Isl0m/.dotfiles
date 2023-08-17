#!/bin/bash
code --list-extensions > ./vscode-extensions/temp-list.txt

while read extension; do
  echo code --install-extension "$extension" >> ./vscode-extensions/install-list.sh
done < ./vscode-extensions/temp-list.txt

rm ./vscode-extensions/temp-list.txt

git add .