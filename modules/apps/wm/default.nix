{ pkgs, ... }:
{
  imports = [ ./fonts.nix ];
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  environment.systemPackages = with pkgs; [
    grim
    rofi-wayland
    kitty
    wl-clipboard
    eww
    ags
    swww
    xfce.tumbler
    xfce.thunar
  ];
}
