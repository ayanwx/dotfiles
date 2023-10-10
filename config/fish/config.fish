if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /home/ayanw/.cargo/bin
fish_add_path /home/ayanw/.yarn/bin

alias ls="exa --all --icons $argv"
alias tree="exa --all --icons --tree $argv"
alias cat="bat --style plain --paging never --theme Dracula $argv"
alias du="dust $argv"