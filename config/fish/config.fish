fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.yarn/bin
fish_add_path $HOME/dotfiles/bin
fish_add_path $HOME/.bun/bin

set -x EDITOR          "code"
set -x FISHCONF        "$HOME/.config/fish"
set -x NVIMCONF        "$HOME/.config/nvim"
set -x EWWCONF         "$HOME/.config/nvim"
set -x MICRO_TRUECOLOR 1

alias pkgcount="yay -Q | wc -l"
alias ls="eza --icons $argv"
alias tree="eza --icons --tree $argv"
alias cat="bat --style plain --paging never --theme Dracula $argv"
alias du="dust $argv"
alias img="kitty +kitten icat $argv"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
