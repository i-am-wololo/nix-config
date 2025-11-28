{
  inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

		home-manager = {
			url = "github:nix-community/home-manager/release-25.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		ps3dec = {
			inputs.nixpkgs.follows = "nixpkgs";
			url = "github:i-am-wololo/ps3dec";
		};

		nur = {
			url = "github:nix-community/NUR";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		# niri = {
		# 	url = "github:sodiboo/niri-flake";
		# };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, nur, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
	
		specialArgs = {inherit inputs system nur;};

		inherit system;
		modules = [
  	      ./configuration.nix

					# niri.nixosModules.niri
					nixvim.nixosModules.nixvim
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
