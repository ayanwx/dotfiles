{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./xdg.nix
  ];
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  services.udisks2.enable = true;
  environment.systemPackages = with pkgs; [
    grim
    slurp
    swappy
    rofi-wayland
    kitty
    wl-clipboard
    eww
    ags
    swww
    dunst
    xfce.tumbler
    xfce.thunar
  ];
}
