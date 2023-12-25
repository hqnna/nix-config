{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      format = "$directory$nix_shell$git_branch[»](red) ";
      command_timeout = 3600;
      add_newline = false;
      scan_timeout = 60;

      directory = {
        truncate_to_repo = false;
        format = "[$path]($style) ";
        style = "blue";
      };

      nix_shell = {
        disabled = false;
        unknown_msg = "";
        format = "$state ";
        impure_msg = "[impure](white)";
        pure_msg = "[pure](white)";
      };

      git_branch = {
        format = "[$branch]($style) ";
        style = "cyan";
      };
    };
  };
}
