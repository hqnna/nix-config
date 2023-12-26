{
  inputs = {
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    ghostty.url = "git+ssh://git@github.com/mitchellh/ghostty";
    nix-super.url = "github:privatevoid-net/nix-super";
  };

  outputs = { self, nixpkgs, ghostty, home-manager, nix-super }@inputs: {
    nixosConfigurations.euphoria = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
      system = "x86_64-linux";
      specialArgs = inputs;
    };
  };
}
