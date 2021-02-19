# DevEnv-Install
Install common programming languages

## Installer
To install all available formulae (scripts for languages), run:

```bash
./bootstrap.sh
```

You can also go into the scripts directory and install individual
programs using this syntax:

```bash
./{name}.sh
```

## Where's sudo?

These scripts install language __version managers__, not the languages
themselves. This allows the programs to be installed the user's home directory,
thus not requiring root privileges.

## Version Manager Instructions
[Node Version Manager](https://github.com/nvm-sh/nvm#usage)
[Pyenv](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md)
