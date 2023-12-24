{ config, lib, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "adwaita-dark";
      
      editor = {
        shell = [ "zsh" "-c" ];
        line-number = "absolute";
        auto-completion = false;
        auto-save = false;
        auto-info = false;
        mouse = false;
      };

      editor.cursor-shape = {
        normal = "bar";
        insert = "bar";
        select = "bar";
      };
    };
  };
}
