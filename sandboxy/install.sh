#!/bin/sh

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"

if [ "$(uname -s)" = "Darwin" ]; then
  ln -sf "$DIR/opencode.json" ~/.config/sandboxy/agents/opencode.json
  ln -sf "$DIR/copilot.json" ~/.config/sandboxy/agents/copilot.json
  ln -sf "$DIR/copilot-local-gpt-oss.json" ~/.config/sandboxy/agents/copilot-local-gpt-oss.json
fi
