<div align="center">
  <img src=".github/assets/banner-dark.svg#gh-dark-mode-only" >
  <img src=".github/assets/banner-light.svg#gh-light-mode-only" >
</div>

## Build Instructions

- Replace `./required/hardware-configuration.nix` with your own hardware config.
- (WSL) Disable GUI apps [[./modules/apps/default.nix](modules/apps)]
- (WSL) Disable home-manager services [[./modules/home-manager/services/default.nix](./modules/home-manager/services)]
- (WSL) Disable systemd services [[./flake.nix](flake.nix)]
- Run `sudo nixos-rebuild [switch|boot|whatever]`
