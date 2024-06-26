{ pkgs, settings, ... }:
{
  systemd.user.services.feh = {
    enable = true;
    serviceConfig = {
      Restart = "always";
      ExecStart = "${pkgs.feh}/bin/feh --bg-scale ${settings.wallpaper_path}";
    };
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
  };
  environment.systemPackages = [ pkgs.feh ];
}
