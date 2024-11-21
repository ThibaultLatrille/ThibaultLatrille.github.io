#!/usr/bin/env bash
rm -rf ./public/
rm -rf ./ressources/
academic import static/uploads/references-myBiblio.bib content/publication/ --normalize --compact
hugo
cd ./public/
git init
git add .
git commit -m "Publishing"
git remote add origin git@github.com:ThibaultLatrille/ThibaultLatrille.github.io.git
git push --force --set-upstream origin master
