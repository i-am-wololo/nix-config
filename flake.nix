{

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
          url = "github:nix-community/home-manager/release-24.11";
          inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, ... }@inputs: {


    nixosConfigurations.nixos =  let
    system = "x86_64-linux";
    in
    nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [

        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix

        home-manager.nixosModules.home-manager {

            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.wololo = import ./wololo/home.nix;
            home-manager.extraSpecialArgs = {
                                            unstable = import nixpkgs-unstable {
                                            inherit system;
                                            config.allowUnfree = true;
                                        };
      };

        }

      ];
    };
  };
}
