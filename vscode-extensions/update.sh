#!/bin/bash

while read extension; do
  echo code --install-extension "$extension" > extensions-list.txt
done < ./list.txt
