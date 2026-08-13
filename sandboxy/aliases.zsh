alias sb:build='(cd ~/dev/apple-containers/examples/sandboxy && BUILD_CONFIGURATION=release make build)'
alias sb:clean='(cd ~/dev/apple-containers/examples/sandboxy && .build/release/sandboxy cache clean --all)'
alias sb:rei:oc='(cd ~/dev/apple-containers/examples/sandboxy && .build/release/sandboxy run --reinstall --no-network-filter --name opencode opencode)'
alias sb:run='~/dev/apple-containers/examples/sandboxy/.build/release/sandboxy'