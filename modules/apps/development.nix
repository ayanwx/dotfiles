{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    clang
    rustup
    nodejs_23
    python312
    bun

    vscode
    android-studio
    android-tools

    ngrok
    pm2

    nodePackages."nodemon"
    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"
    python312Packages."yt-dlp"

  ];
}
