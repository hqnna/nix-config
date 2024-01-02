{ config, lib, pkgs, nixpkgs, nix-super, ... }:

let
  nixPkgs = nix-super.packages.${pkgs.system};
in {
  nix = {
    settings.cores = 0;
    gc.dates = "weekly";        
    gc.automatic = true;
    settings.max-jobs = 16;
    optimise.automatic = true;
    package = nixPkgs.default;
    optimise.dates = [ "daily" ];
    settings.experimental-features = [
      "auto-allocate-uids" "configurable-impure-env"
    ];

    registry = {
      default.flake = nixpkgs;
      nixpkgs.flake = nixpkgs;
    };
  };
}
