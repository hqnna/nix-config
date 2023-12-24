{ config, lib, pkgs, ... }:

{
  programs.gpg = {
    enable = true;
    homedir = "${config.xdg.dataHome}/gnupg";
    mutableTrust = true;
    mutableKeys = true;
  };
}
