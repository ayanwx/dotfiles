fish_add_path /home/ayanw/.cargo/bin
fish_add_path /home/ayanw/.yarn/bin

set -x EDITOR "code"
set -x FISHCONF "$HOME/.config/fish"
set -x NVIMCONF "$HOME/.config/nvim"

alias nv="neovide $argv"
alias ls="exa --icons $argv"
alias tree="exa --icons --tree $argv"
alias cat="bat --style plain --paging never --theme Dracula $argv"
alias du="dust $argv"
alias tlauncher="java -jar /bin/tlauncher $argv"
alias img="kitty +kitten icat $argv"
