# thetayloredman/DevEnv-Install

# node.js
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
bash nodesource_setup.sh
sudo apt-get install nodejs
sudo apt-get install npm

# add npm stuff
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

echo "Finished.";
echo "You should restart your system.";
