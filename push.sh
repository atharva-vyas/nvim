#!/bin/bash
rm -rf nvim-old
mkdir nvim-old
cd nvim-old
git clone https://github.com/atharva-vyas/nvim
cd ..
# rm -rf ./nvim-old/nvim/*
rm -rf ./nvim-old/nvim/nvim-old
cp -r ./* ./nvim-old/nvim
cd nvim-old/nvim
rm -rf nvim-old

# git init
git add .
currentEpochTime=$(date +%s)
git commit -m "${currentEpochTime}"
git branch -M main
git remote add origin https://github.com/atharva-vyas/nvim.git
git push -u origin main
cd ../..
rm -rf nvim-old
