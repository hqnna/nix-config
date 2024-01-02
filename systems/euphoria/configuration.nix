{ config, lib, pkgs, ghostty, home-manager, ... }:

{
  imports = [
     home-manager.nixosModules.default
    ./services/syncthing.nix
    ./system/settings.nix
    ./system/hardware.nix
    ./system/network.nix
    ./system/desktop.nix
    ./system/environ.nix
    ./system/locale.nix
    ./system/users.nix
    ./system/boot.nix
  ];

  home-manager.useUserPackages = true;
  system.stateVersion = "23.11";
}

