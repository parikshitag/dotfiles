
# Set PATHS
#if [ -x "/opt/homebrew/bin/brew" ]; then
    # For Apple Silicon Macs
#    export PATH="/opt/homebrew/bin:$PATH"
#fi

case `uname` in
    Linux)
        ## add brew home to PATH in linux/WSL
        brew_home=/home/linuxbrew/.linuxbrew
        if [ -d "${brew_home}" ]; then
            export PATH=${brew_home}/bin:$PATH
        fi
        ;;
    Darwin)
        ## Do macOS thing...
        # Attempt to set up Homebrew PATH automatically for this session
        if [ -x "/opt/homebrew/bin/brew" ]; then
            # For Apple Silicon Macs
            echo "Configuring Homebrew in PATH for Apple Silicon Mac..."
            export PATH="/opt/homebrew/bin:$PATH"
        fi
        ;;
esac
