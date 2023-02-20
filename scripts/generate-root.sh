#!/usr/bin/env bash

# Usage:
# $ . scripts/generate-root.sh

echo "########################################"
echo "# Generate a new Angular app (in root) #"
echo "########################################"

echo "> Remove the old Angular app"

echo "> Create an Angular app"
ng new app --directory ./ --skip-git true --routing --style scss --defaults --strict

echo "> Builds and serves your application with \"$ ng serve\""
