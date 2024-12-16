{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    clang
    rustup
    nodejs_23
    python312
    bun
    yarn-berry

    vscode
    android-studio
    android-tools
    postman

    ngrok
    pm2

    gtk4

    gnumake
    cmake

    nodePackages."nodemon"
    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"

  ];
}
