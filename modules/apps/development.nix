{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    clang
    rustup
    nodejs_22
    python312

    vscode
    android-studio
    android-tools

    nodePackages."nodemon"
    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"
  ];
}
