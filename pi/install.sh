#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then
  ln -f "$DIR/models.json" ~/.pi/agent/models.json
  ln -f "$DIR/settings.json" ~/.pi/agent/settings.json
fi
