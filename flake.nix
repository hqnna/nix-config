{
  inputs = {
    home-manager.url = "github:nix-community/home-manager";
    ghostty.url = "git+ssh://git@github.com/mitchellh/ghostty";
  };

  outputs = { self, nixpkgs, ghostty, home-manager, ... }@inputs: {
    nixosConfigurations.euphoria = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
      system = "x86_64-linux";
      specialArgs = inputs;
    };
  };
}
