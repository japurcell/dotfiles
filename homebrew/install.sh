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
  else
    echo "  Upgrading GitHub CLI for you."
    brew upgrade gh
  fi

  if test ! $(which rtk)
  then
    echo "  Installing rtk for you."
    brew install rtk-ai/tap/rtk
  else
    echo "  Upgrading rtk for you."
    brew upgrade rtk-ai/tap/rtk
  fi

  if test ! $(which codex)
  then
    echo "  Installing codex for you."
    brew install --cask codex
  else
    echo "  Upgrading Codex for you."
    brew upgrade --cask codex
  fi

  if test ! $(which ripgrep)
  then
    echo "  Installing ripgrep for you."
    brew install ripgrep
  else
    echo "  Upgrading ripgrep for you."
    brew upgrade ripgrep
  fi

fi

exit 0
