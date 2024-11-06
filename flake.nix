{
  description = "AyanW's Nix Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
    }@inputs:
    let
      settings = import ./settings.nix;
    in
    {
      nixosConfigurations = {
        ${settings.hostname} = nixpkgs.lib.nixosSystem {
          system = "x86_64";
          modules = [
            # main configruation
            ./required/configuration.nix

            # modules
            ./modules/boot
            ./modules/i18n
            ./modules/audio
            ./modules/apps
            ./modules/openssh
            #./modules/jellyfin
          ];
          specialArgs = {
            inherit settings;
            inherit inputs;
          };
        };
      };
    };
}