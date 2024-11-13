{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    clang
    rustup
    nodejs_22
    python312
    bun

    vscode
    android-studio
    android-tools

    blender

    nodePackages."nodemon"
    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"
  ];
}
