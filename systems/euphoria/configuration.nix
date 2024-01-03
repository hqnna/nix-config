{ config, lib, pkgs, ghostty, home-manager, ... }:

{
  imports = [
     home-manager.nixosModules.default
    ./services/syncthing.nix
    ../shared/settings.nix
    ./system/hardware.nix
    ./system/network.nix
    ./system/desktop.nix
    ./system/environ.nix
    ../shared/locale.nix
    ./system/users.nix
    ./system/boot.nix
  ];

  home-manager.useUserPackages = true;
  system.stateVersion = "23.11";
}

