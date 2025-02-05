{

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [

        ./configuration.nix

        home-manager.nixosModules.home-manager {

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.wololo = import ./wololo/home.nix;
        }

      ];
    };
  };
}
