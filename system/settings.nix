{ config, lib, pkgs, ... }:

{
  nix = {
    settings.cores = 0;
    gc.dates = "weekly";        
    gc.automatic = true;
    settings.max-jobs = 16;
    optimise.automatic = true;
    optimise.dates = [ "daily" ];    
    settings.experimental-features = [
      "nix-command" "flakes"
    ];
  };
}
