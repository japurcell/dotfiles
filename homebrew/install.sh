#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if [ "$(uname -s)" = "Darwin" ]; then

  # Check for Homebrew
  if test ! $(which brew)
  then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if test ! $(which gh)
  then
    echo "  Installing GitHub CLI for you."
    brew install gh
  fi

fi

exit 0
