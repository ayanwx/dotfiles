{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./xdg.nix
  ];
  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
  };
  services.udisks2.enable = true; # auto mount usb drive
  services.tumbler.enable = true;

  environment.systemPackages = with pkgs; [

    hyprpicker
    hyprpolkitagent
    hyprshade

    grim
    slurp
    swappy

    rofi-wayland
    kitty
    wl-clipboard
    swww
    dunst
    eww

    xfce.thunar
  ];
}
