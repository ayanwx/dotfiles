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
  services.udisks2.enable = true;
  services.tumbler.enable = true;

  environment.systemPackages = with pkgs; [
    grim
    slurp
    swappy

    rofi-wayland
    kitty
    wl-clipboard
    swww
    dunst

    hyprpicker
    hyprpolkitagent
    hyprshade

    xfce.thunar
  ];
}
