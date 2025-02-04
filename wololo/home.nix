
{config, pkgs, ...} : {
        imports = [
        ./unstablepackages.nix
        ];

        home.stateVersion = "24.11";


        programs.neovim = {
        enable = true;
        defaultEditor = true;
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

}

