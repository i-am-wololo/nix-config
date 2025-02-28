{

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		stable.url = "github:NixOS/nixpkgs/nixos-24.11";
		ps3dec.url = "github:i-am-wololo/ps3dec";
		niri.url = "github:sodiboo/niri-flake";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, niri, home-manager, nixvim, stable, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    pkgs-stable = import stable { inherit system; 
				      config.allowUnfree = true;
					};
    in
    nixpkgs.lib.nixosSystem {
	
		specialArgs = {inherit inputs system pkgs-stable niri ;};

		inherit system;
		modules = [
					nixvim.nixosModules.nixvim
					niri.nixosModules.niri
  	      ./configuration.nix
  	      home-manager.nixosModules.home-manager {
						home-manager.extraSpecialArgs = { 
							inherit inputs system pkgs-stable;
						};
  	  		  home-manager.useGlobalPkgs = true;
  	  		  home-manager.useUserPackages = true;
  	  		  home-manager.users.wololo = import ./wololo/home.nix;
  	  		    }

  	  		  ];
  	  		};
  };
}
