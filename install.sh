# thetayloredman/DevEnv-Install

# node.js
curl "https://nodejs.org/dist/latest/node-${VERSION:-$(wget -qO- https://nodejs.org/dist/latest/ | sed -nE 's|.*>node-(.*)\.pkg</a>.*|\1|p')}.pkg" > "$HOME/Downloads/node-latest.pkg" && sudo installer -store -pkg "$HOME/Downloads/node-latest.pkg" -target "/"

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
