#!/bin/bash
rm -rf obsidian-old
mkdir obsidian-old
cd obsidian-old
git clone https://github.com/atharva-vyas/obsidian
cd ..
# rm -rf ./obsidian-old/obsidian/*
rm -rf ./obsidian-old/obsidian/obsidian-old
cp -r ./* ./obsidian-old/obsidian
cd obsidian-old/obsidian
rm -rf obsidian-old

# git init
git add .
currentEpochTime=$(date +%s)
git commit -m "${currentEpochTime}"
git branch -M main
git remote add origin https://github.com/atharva-vyas/obsidian.git
git push -u origin main
cd ../..
rm -rf obsidian-old
