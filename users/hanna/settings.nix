{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    bitwarden discord spotify vscodium-fhs bat
    moonlight-qt thunderbird virt-manager helix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "hanna";
  home.homeDirectory = "/home/hanna";
  home.stateVersion = "23.11";
}
