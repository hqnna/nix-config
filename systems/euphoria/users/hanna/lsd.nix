{ config, lib, pkgs, ... }:

{
  programs.lsd = {
    enable = true;
    enableAliases = true;

    settings = {
      header = false;
      classic = false;
      dereference = false;
      symlink-arrow = "»";
      date = "date";

      color = {
        when = "auto";
      };

      icons = {
        when = "never";
      };
      
      blocks = [
        "permission"
        "user"
        "size"
        "date"
        "name"
      ];
    };
  };
}
