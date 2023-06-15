#!/bin/bash

while read extension; do
  code --install-extension "$extension"
done < ./list.txt
