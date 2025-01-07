#!/usr/bin/env zsh
############################
# This script creates symlinks from the home directory to any desired dotfiles in $HOME/dotfiles
# And also installs MacOS Software
# And also installs Homebrew Packages and Casks (Apps)
# And also sets up VS Code
# And also sets up Sublime Text
############################

# dotfiles directory
dotfiledir="${HOME}/dotfiles"
backupdotfiledir="${dotfiledir}/backup/$(date +%Y%m%d_%H%M%S)"

# list of files/folders to symlink in ${homedir}
files=(zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases )

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}" || exit

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
    echo "Backing up $file in $backupdotfiledir"
    mkdir -p "${backupdotfiledir}" && cp "${HOME}/.${file}" "${backupdotfiledir}/.${file}"
    echo "Creating symlink to $file in home directory."
    ln -sf "${dotfiledir}/.${file}" "${HOME}/.${file}"
done

# Run the MacOS Script
#./macOS.sh

# Run the Homebrew Script
./brew.sh

# Run VS Code Script
./vscode.sh

# Run the Sublime Script
./sublime.sh

echo "Installation Complete!"
