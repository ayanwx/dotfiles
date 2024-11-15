{
  config,
  pkgs-unstable,
  settings,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  networking = {
    hostName = settings.hostname;
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPortRanges = [
        {
          from = 1000;
          to = 9999;
        }
      ];
    };
  };
  time.timeZone = settings.timezone;

  security = {
    rtkit.enable = true;
    sudo.enable = true;
    polkit.enable = true;
  };

  users.users = {
    ${settings.username} = {
      isNormalUser = true;
      description = settings.name;
      extraGroups = [
        "networkmanager"
        "wheel"
        "libvirtd"
      ];
      shell = pkgs-unstable.fish;
    };
  };

  programs = {
    fish.enable = true;
    git = {
      enable = true;
      config = {
        init.defaultbranch = "main";
      };
    };
    nix-ld.enable = true;
  };

  environment.systemPackages = with pkgs-unstable; [
    gh # github cli
    killall
    gdu # graphical du
    curl
    wget

    # nix-language essentials
    nixfmt-rfc-style
    nil
    nh
    direnv

    # filesystem
    ntfs3g
    btrfs-progs
    compsize

    # other essentials
    neofetch # most important
    eza # better ls
    bat # better cat
    micro # text editor
    bottom # process monitor thingy
    ripgrep # better grep
    jq # json thingy
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs;
      inherit settings;
    };
    users.${settings.username} = {
      imports = [
        ../modules/home
        #inputs.ags.homeManagerModules.default
      ];
    };
    backupFileExtension = "backup";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;

  hardware.opengl.enable = true;
  system.stateVersion = "24.05"; # Did you read the comment?
}
