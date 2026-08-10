{
nixConfig = {
    extra-substituters = [ 
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [ 
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=" 
    ];
  };
  inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
		nu.url = "github:NixOS/nixpkgs/nixos-unstable";
		spicetify-nix = {
			url = "github:Gerg-L/spicetify-nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixcord.url = "github:FlameFlag/nixcord";

		home-manager = {
			url = "github:nix-community/home-manager/release-26.05";
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
		};

		prism = {
			url = "github:ElyPrismLauncher/ElyPrismLauncher";
			inputs.nixpkgs.follows = "nixpkgs";
		};

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v1.1.0";

      # Optional but recommended to limit the size of your system closure.
      inputs.nixpkgs.follows = "nixpkgs";
    };

		niri = {
			url = "github:epireyn/niri-flake";
		};
		sops-nix = {
			url = "github:mic92/sops-nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		helium = {
			url = "github:schembriaiden/helium-browser-nix-flake";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, niri, nixcord, home-manager, nixvim, nur, lanzaboote, spicetify-nix, sops-nix, helium, nu, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
	
		specialArgs = {inherit inputs system nur;};

		inherit system;
		modules = [
          lanzaboote.nixosModules.lanzaboote
  	      ./configuration.nix
					niri.nixosModules.niri
					nixvim.nixosModules.nixvim
  	      home-manager.nixosModules.home-manager {
						home-manager = {
							extraSpecialArgs = { 
								inherit inputs system helium nu;
							};
							useGlobalPkgs = true;
							useUserPackages = true;
							users.wololo = {
								imports = [
									nixcord.homeModules.nixcord
									spicetify-nix.homeManagerModules.spicetify
									./wololo/home.nix
									sops-nix.homeManagerModules.sops
								];
							};
						};
  	  		    }

  	  		  ];
  	  		};
  };
}
