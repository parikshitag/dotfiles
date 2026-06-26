# If not running interactively, exit script
[[ $- != *i* ]] && return

source ~/.aws_devops_toolkit.sh

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
 
export GPG_TTY=$(tty)
# eval "$(/bin/brew shellenv)"
export TZ=UTC
# Added by dbt Fusion extension (ensure dbt binary dir on PATH)
if [[ ":$PATH:" != *":/home/parikshit/.local/bin:"* ]]; then
  export PATH=/home/parikshit/.local/bin:"$PATH"
fi
# Added by dbt Fusion extension
alias dbtf=/home/parikshit/.local/bin/dbt

# Added by dbt installer
export PATH="$PATH:/home/parikshit/.local/bin"


export PATH="$HOME/.npm-global/bin:$PATH"
