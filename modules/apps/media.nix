{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    spotify
    vlc
    mpv
    vpv
    photofield
    pureref
    oculante

    playerctl
    imagemagick
    obs-studio
    lutgen

    spotdl
    gallery-dl
    yt-dlp
  ];
}
