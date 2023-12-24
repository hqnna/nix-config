{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      format = "$directory$git_branch[»](red) ";
      command_timeout = 3600;
      add_newline = false;
      scan_timeout = 60;

      directory = {
        truncate_to_repo = false;
        format = "[$path]($style) ";
        style = "blue";
      };

      git_branch = {
        format = "[$branch]($style) ";
        style = "cyan";
      };
    };
  };
}
