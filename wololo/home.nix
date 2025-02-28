
{config, pkgs, inputs, lib, ...} : {
	imports = [
		./packages.nix 
		./stable.nix
		./neovideconf.nix
		./niri
  ];

	home.stateVersion = "24.11";




	programs.zsh = {
		enable = true;
		enableCompletion = true;
		plugins = [
			{
				name = "zsh-syntax-highlighting";
				src = pkgs.fetchFromGitHub {
					owner = "zsh-users";
					repo = "zsh-syntax-highlighting";
					rev = "master";
					sha256 = "KRsQEDRsJdF7LGOMTZuqfbW6xdV5S38wlgdcCM98Y/Q=";
				};
			}
		];
	};

  programs.git = {
      enable = true;
      userName = "wololo";
      userEmail = "somedudz@protonmail.com";
  };


  programs.starship = {
     enable = true;
     enableZshIntegration = true;
  };

	programs.direnv = {
		enable = true;
		enableZshIntegration = true;
	};
	
	programs.zoxide = {
		enable = true;
		enableZshIntegration = true;
	};
	
	
	programs.vscode = {
		enable = false;
	};

	programs.foot = {
		enable = true;
		settings = {
			main = {
				font = "Hack Nerd Font:size=12";
			};
		};
	};

	programs.aria2 = {
		enable = true;
	};

	
}

