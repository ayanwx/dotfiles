{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    #neovim

    rustup
    go
    clang
    lua
    nodejs_22
    python312
    #yarn
    #ngrok

    watchman

    nixfmt-rfc-style # nix language formatter
    nil # nix language server
  ];
}
