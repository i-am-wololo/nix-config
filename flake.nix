{

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		stable.url = "github:NixOS/nixpkgs/nixos-24.11";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, home-manager, nixvim, stable, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
	
	specialArgs = {inherit inputs system;};
	inherit system;
	modules = [
	nixvim.nixosModules.nixvim
        ./configuration.nix
        home-manager.nixosModules.home-manager {

		home-manager.extraSpecialArgs = { 
			inherit inputs system;
			pkgs-stable = import stable { inherit system; 
						      config.allowUnfree = true;
						      };
		};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.wololo = import ./wololo/home.nix;
        }

      ];
    };
  };
}
