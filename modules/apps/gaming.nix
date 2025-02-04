{ pkgs, inputs, ... }:
{

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  programs.anime-game-launcher.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    jdk21
    inputs.prismlauncher.packages.${pkgs.system}.prismlauncher
    # jdk8
    # xclicker
    steam-run
  ];
}
