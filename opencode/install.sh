#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then
  \cp -f "$DIR/opencode.jsonc" ~/.config/opencode/opencode.jsonc
fi
