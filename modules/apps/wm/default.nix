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
    ags
  ];
}
