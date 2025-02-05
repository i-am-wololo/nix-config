
{config, pkgs, nixvim, ...} : {
        imports = [
	./packages.nix
        ];

        home.stateVersion = "24.11";

	let
    		nixvim = import (builtins.fetchGit {
        		url = "https://github.com/nix-community/nixvim";
    		});
	in
	programs = {
        	neovim = {
        	enable = true;
        	defaultEditor = true;
        	};


        	git = {
        	    enable = true;
        	    userName = "wololo";
        	    userEmail = "somedudz@protonmail.com";
        	};

        	nixvim = {
        	        enable = true;
        	};
	};

        #programs.zsh = {
        #    enable = true;

        #};

        #programs.starship = {
        #    enable = true;
        #    enableZshIntegration = true;
        #};

	
	
}

