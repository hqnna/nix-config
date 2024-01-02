{ config, lib, pkgs, ... }:

{
  services.syncthing = {
    dataDir = "/home/hanna/.local/share/syncthing";
    configDir = "/home/hanna/.config/syncthing";
    user = "hanna";
    enable = true;
  };
}
