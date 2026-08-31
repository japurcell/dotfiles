#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then
  ln -f "$DIR/config.toml" ~/.codex/config.toml
fi
