#!/bin/bash

# Build Eleventy site
npm run build

# Go to temp deploy folder
mkdir -p _deploy
cp -r _site/* _deploy/
cd _deploy

# Initialize a fresh git repo and push to gh-pages
git init
git remote add origin https://github.com/kennyhaggard/kisha-korce.git
git checkout -b gh-pages
git add .
git commit -m "Manual deploy"
git push --force origin gh-pages

# Cleanup
cd ..
rm -rf _deploy