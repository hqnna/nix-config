{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    dotDir = ".config/zsh";
       
    completionInit = ''
      autoload -U compinit && compinit -d ${config.xdg.cacheHome}/zsh/completion
    '';

    history = {
      path = "${config.xdg.cacheHome}/zsh/history";
      share = true;
      size = 10000;
      save = 1000;
    };

    sessionVariables = {
      COLORTERM = "truecolor";
      NIXPKGS_ALLOW_UNFREE = 1;
      GTK2_RC_FILES = "${config.xdg.configHome}/gtk-2.0/gtkrc";
      LESSHISTFILE = "${config.xdg.cacheHome}/less/history";
    };
    
    shellAliases = {
      cat = "bat -p";
    };
  };
}
