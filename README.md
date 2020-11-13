# DevEnv-Install
Install all common NodeJS development libraries for any system with a Bash shell (OS X, *NIX, etc.)

## Running

To run and install my DevEnv, clone this repo and run 

```bash

chmod +x ./install.sh
./install.sh

```

## Why not sudo?

Node Version Manager (nvm) installs NodeJS locally, not system wide.
Only your user will have access to NodeJS unless other users also install
nvm.

## What packages are installed? (Globally)

- [**n**](#n)
- [**typescript**](#typescript)
- [**prettier**](#prettier)
- **babel**
- **babel-eslint**
- **eslint**
- **jest**
- **pm2**
- **jsdoc**
- **codecov**
- **browserify**

### n

[`n` on NPM](https://npmjs.com/package/n)

**n** is a simple NPM package for managing Node.js versions.

### typescript

[`typescript` on NPM](https://npmjs.com/package/typescript)

**typescript** is a transpiled programming language built on JavaScript to implement type-safety into the language.

### prettier

[`prettier` on NPM](https://npmjs.com/package/prettier)

**prettier** is an opinionated code formatter that *completely* formats your code from scratch.

Prettier begins by tokenizing your JavaScript and making an AST with it, then it prints that AST to your style guidelines.

### \[wip\]

The rest is a Work In Progress.
