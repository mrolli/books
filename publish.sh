#!/usr/bin/env sh

mv Bibliothek/*.html ./
mv Bibliothek/Images/* ./Images/
git add .
git ci -m "Publish current library content"
git push origin main
