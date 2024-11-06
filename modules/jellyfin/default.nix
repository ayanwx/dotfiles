{ pkgs, settings, ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;

  };
  environment.systemPackages = with pkgs; [
    jellyfin
  ];
}
