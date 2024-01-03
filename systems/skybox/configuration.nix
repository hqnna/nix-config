{ config, lib, pkgs, ... }:

{
  imports = [
    ./system/hardware.nix
    ../shared/settings.nix
    ./system/networking.nix
    ./services/wireguard.nix
    ./services/openssh.nix
    ./services/libvirt.nix
    ./services/nginx.nix
    ../shared/locale.nix
    ./system/prompt.nix
    ./system/motd.nix
    ./system/boot.nix
  ];

  environment.systemPackages = with pkgs; [ vim wireguard-tools python3 ];
  system.copySystemConfiguration = true;
  system.stateVersion = "23.11";
}

