{ pkgs-unstable, ... }:
{
  environment.systemPackages = with pkgs-unstable; [
    clang
    rustup
    nodejs_22
    python312
    bun

    vscode
    android-studio
    android-tools

    ngrok

    nodePackages."nodemon"
    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"
  ];
}
