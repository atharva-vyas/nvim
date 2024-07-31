#!/bin/bash
rm -rf nvim-temp
mkdir nvim-temp
cd nvim-temp
git clone https://github.com/atharva-vyas/nvim
cd ..
# rm -rf ./nvim-temp/nvim/*
rm -rf ./nvim-temp/nvim/nvim-temp
cp -r ./* ./nvim-temp/nvim
cd nvim-temp/nvim
rm -rf nvim-temp

# git init
git add .
currentEpochTime=$(date +%s)
git commit -m "${currentEpochTime}"
git branch -M main
git remote add origin https://github.com/atharva-vyas/nvim.git
git push -u origin main
cd ../..
rm -rf nvim-temp
