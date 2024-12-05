{
  description = "AyanW's Nix Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
    }@inputs:
    let
      settings = import ./settings.nix;
      system = settings.system;
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {

        ${settings.hostname} = nixpkgs.lib.nixosSystem {
          modules = [

            # main configruation
            ./required/configuration.nix

            # modules
            ./modules/boot
            ./modules/i18n
            ./modules/audio
            ./modules/apps
            ./modules/openssh
            ./modules/systemd

          ];

          specialArgs = {
            inherit settings;
            inherit inputs;
          };
        };
      };
    };
}
