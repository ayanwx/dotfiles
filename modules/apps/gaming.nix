{ pkgs, ... }:
{

  imports = [ ../overlays/prismlauncher.nix ];

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    jdk21
    jdk8
    prismlauncher
    xclicker
  ];
}
