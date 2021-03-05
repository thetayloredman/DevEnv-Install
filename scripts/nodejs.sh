#!/usr/bin/env bash
# thetayloredman/DevEnv-Install

function PRINT()
{
	printf "%b\n" "${@}"
}

function SILENTRUN()
{
	$@ 2>&1 > /dev/null &!
}

# Remove old install
function _uninstall()
{
	rm -rf "${NVM_DIR}"
}

# Install Node Version Manager, NodeJS, and NPM
function _install_node()
{
	_uninstall

	# Download install script
	cd $HOME/Downloads
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash

	# Install node
	PRINT
	PRINT
	PRINT "NVM installed."
	PRINT "Restart your terminal session and run 'nvm install node' to install node."
}

PRINT "Downloading NVM..."
[[ "${1}" != '--verbose' ]] && SILENTRUN _install_node || _install_node
