{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    clang
    python312
    go
    rustc
    cargo
    bun
    nodejs_23
    yarn-berry

    vscode
    android-studio
    android-tools
    postman

    #ngrok
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
