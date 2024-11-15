{ pkgs, ... }:
{
  systemd.user.services.udiskie = {
    enable = true;
    serviceConfig = {
      Restart = "always";
      ExecStart = "${pkgs.udiskie}/bin/udiskie";
    };
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
  };
}
