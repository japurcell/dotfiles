#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if [ "$(uname -s)" = "Darwin" ]; then

  if test ! $(which pwsh)
  then
    echo "  Installing PowerShell for you."
    brew install powershell
  else
    echo "  Upgrading PowerShell for you."
    brew upgrade powershell
  fi

fi

exit 0
