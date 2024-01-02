{ config, lib, pkgs, ... }:

{
  home.file."${config.xdg.configHome}/ghostty/config" = {
    enable = true;

    text = ''
      font-family = "Monaspace Neon"
      font-feature = "-dlig"
      font-feature = "-calt"
      font-feature = "-liga"
      font-size = 9

      window-height = 30
      window-width = 120
      term = "xterm-256color"

      background = 1d1d1d
      foreground = ffffff

      cursor-style = bar
      cursor-color = 0095ff
      selection-foreground = ffffff
      selection-background = 0095ff

      palette = 0=#1d1d1d
      palette = 8=#686868
      palette = 1=#ff3b30
      palette = 9=#ff3b30
      palette = 2=#4cd964
      palette = 10=#4cd964
      palette = 3=#ffcc00
      palette = 11=#ffcc00
      palette = 4=#0095ff
      palette = 12=#0095ff
      palette = 5=#ff2d55
      palette = 13=#ff2d55
      palette = 6=#5ac8fa
      palette = 14=#5ac8fa
      palette = 7=#ffffff
      palette = 15=#ffffff
    '';
  };
}
