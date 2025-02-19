
{config, pkgs, inputs, ...} : {
        imports = [
	./packages.nix
	./stable.nix
	./neovideconf.nix	
        ];

        home.stateVersion = "24.11";

	programs.bash = {
		enable = true;
		enableCompletion = true;	
	};

        programs.git = {
            enable = true;
            userName = "wololo";
            userEmail = "somedudz@protonmail.com";
        };

        #programs.zsh = {
        #    enable = true;

        #};

        #programs.starship = {
        #    enable = true;
        #    enableZshIntegration = true;
        #};

	programs.direnv = {
		enable = true;
		enableBashIntegration = true;
	};
	
	programs.zoxide.enable = true;
	programs.zoxide.enableBashIntegration = true;

}

