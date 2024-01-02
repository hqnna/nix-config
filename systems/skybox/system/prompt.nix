{ config, lib, pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
    histFile = "/run/user/0/history";
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    enableCompletion = false;
    enableLsColors = true;
    histSize = 10000;

    shellInit = ''
      export LESSHISTFILE=/run/user/0/lesshist
      export PATH=$PATH:/usr/bin
    '';

    promptInit = ''
      export PS1="%F{cyan}$USER%f@%F{blue}$HOST%f %~ %F{blue}»%f "
    '';
  };
}
