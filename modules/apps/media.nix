{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    spotify
    vlc
    mpv
    vpv
    pureref
    oculante

    playerctl
    imagemagick
    ffmpeg
    obs-studio
    lutgen

    spotdl
    gallery-dl
    yt-dlp
  ];
}
