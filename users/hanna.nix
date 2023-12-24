{ config, lib, pkgs, ... }:

{
  users.users.hanna = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  }; 

  home-manager.users.hanna = {
    imports = [
      ./hanna/xdg.nix
      ./hanna/ghostty.nix
      ./hanna/settings.nix
      ./hanna/starship.nix
      ./hanna/gnupg.nix
      ./hanna/shell.nix
      ./hanna/helix.nix
      ./hanna/git.nix
      ./hanna/lsd.nix
    ];
  };
}
