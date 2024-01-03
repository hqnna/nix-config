{ config, lib, pkgs, ... }:

{
  imports = [
    # Shared Configurations
    ../../shared/settings.nix
    ../../shared/locale.nix

    # System Configuration
    ./system/hardware.nix
    ./system/networking.nix
    ./services/wireguard.nix
    ./services/openssh.nix
    ./services/libvirt.nix
    ./services/nginx.nix
    ./system/prompt.nix
    ./system/motd.nix
    ./system/boot.nix
  ];

  environment.systemPackages = with pkgs; [ vim wireguard-tools python3 ];
  system.stateVersion = "23.11";
}

