{ config, lib, pkgs, ... }:

{
  services.sanoid = {
    enable = true;

    datasets = {
      "nixos/root" = {
        autoprune = true;
        autosnap = true;
        monthly = 0;
        hourly = 0;
        daily = 7;
      };

      "nixos/home" = {
        autoprune = true;
        autosnap = true; 
        monthly = 0;
        hourly = 0;
        daily = 7;
      };
    };
  };
}
