{ config, lib, pkgs, ghostty, ... }:

{
  programs.zsh.enable = true;

  programs.gnupg.agent = {
    enableSSHSupport = true;
    enable = true;
  };

  environment = {
    enableAllTerminfo = true;
    systemPackages = with pkgs; [
      gnome.gnome-tweaks adw-gtk3 monaspace roboto
      firefox-wayland openssh gnupg git git-lfs
      ghostty.packages.${system}.default
    ];
  };
}
