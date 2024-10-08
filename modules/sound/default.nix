{ pkgs, ... }:
{
  #Psound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  environment.systemPackages = [
    pkgs.pulseaudio
    pkgs.playerctl
  ];
}
