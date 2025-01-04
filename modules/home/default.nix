{
  config,
  settings,
  pkgs,
  ...
}:
{
  imports = [
    ./config/hypr
    ./config/fish
    ./config/kitty
    ./config/micro

    ./files.nix
    ./gtk.nix
  ];

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = settings.gh_username;
      userEmail = settings.gh_email;
    };
  };
  home = {
    username = settings.username;
    homeDirectory = "/home/${settings.username}";
    sessionVariables = {
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_CACHE_HOME = "$HOME/.cache";
      XDG_BIN_HOME = "$HOME/dotfiles/scripts/bin";
      ANDROID_HOME = "$HOME/Android/Sdk";
      NIXPKGS_ALLOW_UNFREE = 1;
      NIXOS_OZONE_WL = 1;
      GTK_THEME = "Tokyonight-Dark";
      EDITOR = "micro";
      MICRO_TRUECOLOR = 1;
      RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
    };
    enableNixpkgsReleaseCheck = false;
    stateVersion = "24.05";
  };
}
