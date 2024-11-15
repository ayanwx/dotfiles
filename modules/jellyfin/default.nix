{ pkgs, settings, ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    package = pkgs.jellyfin;
  };

  environment.systemPackages = with pkgs; [
  	jellyfin
  	jellyfin-web
  	jellyfin-ffmpeg
  ];
}
