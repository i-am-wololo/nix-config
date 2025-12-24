{
	# nixConfig = {
	# 	#cachix 
	#    substituters = [ 
	# 		"https://ezkea.cachix.org" 
	#      "https://nix-community.cachix.org"
	# 	];
	#    trusted-public-keys = [ 
	# 		"ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" 
	#      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
	# 	];
	#  };
	#
  inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
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
		prism = {
			url = "github:ElyPrismLauncher/ElyPrismLauncher";
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
						home-manager = {
							extraSpecialArgs = { 
								inherit inputs system;
							};
							useGlobalPkgs = true;
							useUserPackages = true;
							users.wololo = import ./wololo/home.nix;
						};
  	  		    }

  	  		  ];
  	  		};
  };
}
