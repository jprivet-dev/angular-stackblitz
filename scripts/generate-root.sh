#!/usr/bin/env bash

# Usage:
# $ . scripts/generate-root.sh

echo "########################################"
echo "# Generate a new Angular app (in root) #"
echo "########################################"

echo "> Remove the old Angular app"

rm .editorconfig
rm .gitignore
rm -rf .vscode
rm README.md
rm angular.json
rm package*.json
rm -rf src
rm tsconfig*.json
rm -rf node_modules

echo "> Create an Angular app"

ng new app --directory ./ --skip-git true --routing --style scss --defaults --strict

line="import 'zone.js/dist/zone'; // Avoid in StackBlitz \"Error: NG0908: In this configuration Angular requires Zone.js\""
sed  -i "1i ${line}" ./src/main.ts

echo "> Builds and serves your application with \"$ ng serve\""
