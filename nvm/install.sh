#!/usr/bin/env bash

if [[ ! -z "$NVM_DIR" ]] && [[ -d "$NVM_DIR" ]]; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi