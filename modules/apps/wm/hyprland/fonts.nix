{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    noto-fonts-monochrome-emoji

    nerd-fonts.fantasque-sans-mono
    nerd-fonts._3270
  ];
}
