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

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
	
	specialArgs = {inherit inputs system;};
	inherit system;
	modules = [

        ./configuration.nix

        home-manager.nixosModules.home-manager {

		home-manager.extraSpecialArgs = { inherit inputs system;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.wololo = import ./wololo/home.nix;
        }

      ];
    };
  };
}
