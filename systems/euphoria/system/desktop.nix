{ config, lib, pkgs, ... }:

{
  hardware.opengl = {
    driSupport32Bit = true;
    extraPackages = with pkgs; [ amdvlk ];
    extraPackages32 = with pkgs; [ driversi686Linux.amdvlk ];
  };

  environment.gnome.excludePackages = with pkgs; [
    gnome.epiphany gnome.geary gnome.totem gnome-tour gnome-console
  ];

  services.xserver = {
    enable = true;
    videoDrivers = [ "amdgpu" ];
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    excludePackages = with pkgs; [ xterm ];
    libinput.enable = true;    
    xkb.layout = "us";
  };

  sound.enable = true;
  hardware.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    audio.enable = true;
    wireplumber.enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
}
