
{config, pkgs, inputs, ...} : {
        imports = [
	./packages.nix
	# ./nvimconf.nix
	./stable.nix
        ];

        home.stateVersion = "24.11";

        programs.git = {
            enable = true;
            userName = "wololo";
            userEmail = "somedudz@protonmail.com";
        };

        programs.nixvim = {
                enable = true;
        };

        #programs.zsh = {
        #    enable = true;

        #};

        #programs.starship = {
        #    enable = true;
        #    enableZshIntegration = true;
        #};

}

