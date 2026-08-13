#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then

  ln -sf "$DIR/opencode.json" ~/.config/sandboxy/agents/opencode.json

fi