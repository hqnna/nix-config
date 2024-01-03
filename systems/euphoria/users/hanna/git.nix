{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "hanna";
    userEmail = "hanna@hanna.lol";
    signing.key = "042C8C8DA37FDB1E";
    signing.signByDefault = true;
    lfs.enable = true;

    aliases = {
      pl = "pull";
      cl = "clone";
      cr = "clone --recursive";
      pu = "push";
      pa = "push --atomic";
      ft = "fetch";
      rt = "remote";
      br = "branch";
      tg = "tag";
      co = "commit";
      sm = "submodule";
      ch = "checkout";
      rb = "rebase";
    };   

    extraConfig = {
      filter."lfs" = {
        smudge = "git-lfs smudge -- %f";
        process = "git-lfs filter-process";
        clean = "git-lfs clean -- %f";
        required = true;
      };

      pull = {
        rebase = true;
      };

      submodule = {
        recurse = true;
      };

      init = {
        defaultBranch = "main";
      };

      core = {
        autoclf = false;
      };
    };
  };
}
