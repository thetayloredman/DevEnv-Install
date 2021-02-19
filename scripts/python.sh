#!/usr/bin/env bash
# thetayloredman/DevEnv-Install

build_env="https://github.com/pyenv/pyenv/wiki#suggested-build-environment"

function PRINT()
{
	printf "%b\n" "${@}"
}

function SILENTRUN()
{
	$@ 2>&1 > /dev/null &!
}

# Install Node Version Manager, NodeJS, and NPM
function _install_python()
{
	local profiles=()
	local pyenv_profile=${HOME}/.pyenv_profile

	# Delete old directory
	[[ -d "${HOME}/.pyenv" ]] && rm -rf "${HOME}/.pyenv"

	# Clone pyennv	
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv

	# Determine which profiles exist
	[[ -f "${HOME}/.bash_profile" ]] && profiles+=("${HOME}/.bash_profile")
	[[ -f "${HOME}/.bashrc" ]] && profiles+=("${HOME}/.bashrc")
	[[ -f "${HOME}/.zshrc" ]] && profiles+=("${HOME}/.zshrc")

	# Source pyenv profile if not already done
	if [[ ! -f "${pyenv_profile}" ]]; then
		touch ${pyenv_profile}

		PRINT 'export PYENV_ROOT="${HOME}/.pyenv"' >> ${pyenv_profile}
		PRINT 'export PATH="${PYENV_ROOT}/bin:${PATH}"' >> ${pyenv_profile}
		PRINT 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' \
			>> ${pyenv_profile}

		for profile in "${profiles[@]}"; do
			PRINT "Pyenv Source"
			PRINT "source ${pyenv_profile}" >> ${profile}
		done
	fi
}

PRINT "Installing Python..."
[[ "${1}" != "--verbose" ]] && SILENTRUN _install_python || _install_python

PRINT "Python installed."
PRINT "Make sure to install the build tools for your distro to use pyenv."
PRINT 
PRINT "Link: ${build_env}"
