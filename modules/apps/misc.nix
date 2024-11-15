{ pkgs, pkgs-unstable, ... }:
{
  programs.firefox.enable = true;
  environment.systemPackages = [
    pkgs-unstable.vesktop
    pkgs-unstable.qbittorrent
    pkgs.motrix
    pkgs.gparted
    pkgs.blender
  ];
}
