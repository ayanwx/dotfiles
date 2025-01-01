{
  config,
  lib,
  pkgs,
  ...
}:
{
  virtualisation = {
    spiceUSBRedirection.enable = true;
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
        ovmf.enable = true;
        vhostUserPackages = with pkgs; [ virtiofsd ];
      };
    };
  };
  programs.virt-manager.enable = true;
}
