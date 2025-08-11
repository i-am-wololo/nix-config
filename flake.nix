{
  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		ps3dec = {
			inputs.nixpkgs.follows = "nixpkgs";
			url = "github:i-am-wololo/ps3dec";
		};
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nur = {
			url = "github:nix-community/NUR";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, home-manager, nixvim, nur, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
	
		specialArgs = {inherit inputs system nur;};

		inherit system;
		modules = [
					nixvim.nixosModules.nixvim
  	      ./configuration.nix
  	      home-manager.nixosModules.home-manager {
						home-manager.extraSpecialArgs = { 
							inherit inputs system;
						};
  	  		  home-manager.useGlobalPkgs = true;
  	  		  home-manager.useUserPackages = true;
  	  		  home-manager.users.wololo = import ./wololo/home.nix;
  	  		    }

  	  		  ];
  	  		};
  };
}
