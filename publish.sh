#!/usr/bin/env sh

if [ -d Bibliothek ]; then
  mv Bibliothek/*.html ./
  mv Bibliothek/Images/* ./Images/
  rm -rf Bibliothek

  git add .
  git ci -m "Publish current library content"
  git push origin main
fi

rsync -av ./ --exclude=.git  beethoven:books.rollis.ch/
