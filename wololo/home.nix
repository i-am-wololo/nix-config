
{config, pkgs, ...} : {
        imports = [
        ./packages.nix
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
        programs.zsh = {
            enable = true;

        };
}

