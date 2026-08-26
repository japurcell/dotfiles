awake() {
  if [[ "$(uname -s)" == "Darwin" ]]; then
    echo "Running on macOS, using caffeinate to prevent sleep..."
    # 1. Look up the alias string safely using the first argument
    local alias_cmd=$(alias "$1" 2>/dev/null | sed "s/^[^=]*=//; s/^'//; s/'$//")

    if [[ -n "$alias_cmd" ]]; then
      # 2. Extract any trailing arguments passed to awake (like -v or --flag)
      shift
      # 3. Execute the extracted command with the remaining arguments inside caffeinate
      eval "caffeinate -dis -- $alias_cmd $@"
    else
      # Fallback if the input was a regular command, not an alias
      caffeinate -dis -- "$@"
    fi
  else
    "$@"
  fi
}

alias sb:build='(cd ~/dev/apple-containers/examples/sandboxy && BUILD_CONFIGURATION=release make build)'
alias sb:run='~/dev/apple-containers/examples/sandboxy/.build/release/sandboxy'
alias sb:clean='sb:run cache clean --all'
alias sb:cp='awake sb:run run --no-network-filter --name copilot copilot'
alias sb:cp:ri='awake sb:run run --reinstall --no-network-filter --name copilot copilot'
alias sb:cp:local-gpt-oss='awake sb:run run --no-network-filter --name copilot-local-gpt-oss copilot-local-gpt-oss'
alias sb:cp:local-gpt-oss:ri='awake sb:run run --reinstall --no-network-filter --name copilot-local-gpt-oss copilot-local-gpt-oss'
alias sb:oc='awake sb:run run --no-network-filter --name opencode opencode'
alias sb:oc:ri='awake sb:run run --reinstall --no-network-filter --name opencode opencode'
alias sb:pi='awake sb:run run --no-network-filter --name pi pi'
alias sb:pi:ri='awake sb:run run --reinstall --no-network-filter --name pi pi'
