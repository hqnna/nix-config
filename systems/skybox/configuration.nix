{ config, lib, pkgs, nix-super, ... }:

let
  nixPkgs = nix-super.packages.${pkgs.system};
in {
  imports = [
    ./system/hardware.nix
    ./system/networking.nix
    ./services/wireguard.nix
    ./services/openssh.nix
    ./services/libvirt.nix
    ./services/nginx.nix
    ./system/locale.nix
    ./system/prompt.nix
    ./system/motd.nix
    ./system/boot.nix
  ];

  nix.registry = {
    default.flake = nixpkgs;
    nixpkgs.flake = nixpkgs;
  };

  nix.package = nixPkgs.default;
  nix.settings.experimental-features = [ "auto-allocate-uids" "configurable-impure-env" ];
  environment.systemPackages = with pkgs; [ vim wireguard-tools python3 ];
  system.copySystemConfiguration = true;
  system.stateVersion = "23.11";
}

