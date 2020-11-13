#!/usr/bin/env bash
# thetayloredman/DevEnv-Install

# nvm
cd $HOME/Downloads
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh
mv install.sh nvm-install.sh
./nvm-install.sh

# NodeJS
nvm install node
npm up -g npm

# Common NodeJS development packages
npm i -g n;
npm i -g typescript;
npm i -g prettier;
npm i -g babel;
npm i -g babel-eslint;
npm i -g eslint;
npm i -g jest;
npm i -g pm2;
npm i -g jsdoc;
npm i -g codecov;
npm i -g browserify;

echo "Finished"
echo "Restart your terminal session to use nodejs and npm."
