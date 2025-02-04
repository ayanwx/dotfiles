{
  pkgs,
  inputs,
  settings,
  ...
}:
{
  programs.firefox.enable = true;
  environment.systemPackages = with pkgs; [
    #vesktop
    #qbittorrent
    motrix
    gparted
    universal-android-debloater
    blender
    floorp
  ];
}
