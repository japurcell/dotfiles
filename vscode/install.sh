#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then

  ln -sf "$DIR/settings.json" ~/Library/Application\ Support/Code/User/settings.json

fi