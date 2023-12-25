{ config, lib, pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;

  imports = [
    ../users/hanna.nix
  ];
}
