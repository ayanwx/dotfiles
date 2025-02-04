{ pkgs, inputs, ... }:
{
  nixpkgs.overlays = [ inputs.rust-overlay.overlays.default ];
  environment.systemPackages = with pkgs; [

    clang
    python312
    go
    bun
    nodejs_23
    yarn-berry

    rust-bin.stable.latest.default

    vscode
    android-studio
    android-tools
    # postman
    # sqlitestudio

    ngrok
    pm2

    # gtk4

    gnumake
    cmake

    bacon
    nodePackages."nodemon"

    nodePackages."prettier"
    nodePackages."eas-cli"

    python312Packages."pip"

    tokei
  ];
}
