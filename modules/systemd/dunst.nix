{ pkgs, ... }:
{
  systemd.user.services.dunst = {
    enable = true;
    serviceConfig = {
      Restart = "always";
      ExecStart = "${pkgs.dunst}/bin/dunst";
    };
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
  };
}
