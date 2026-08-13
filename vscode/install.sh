#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then

  cp -f "$DIR/settings.json" ~/Library/Application\ Support/Code/User/settings.json

fi