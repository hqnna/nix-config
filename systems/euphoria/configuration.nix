{ config, lib, pkgs, ghostty, home-manager, ... }:

{
  imports = [
    # Home Manager
    home-manager.nixosModules.default
    
    # Shared Configurations 
    ../../shared/settings.nix
    ../../shared/locale.nix

    # System Configuration
    ./services/syncthing.nix
    ./system/hardware.nix
    ./system/network.nix
    ./system/desktop.nix
    ./system/environ.nix
    ./system/users.nix
    ./system/boot.nix
  ];

  home-manager.useUserPackages = true;
  system.stateVersion = "23.11";
}

