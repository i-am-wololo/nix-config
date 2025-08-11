
{config, pkgs, inputs, lib, ...} : {
	imports = [
		./packages.nix 
		./packages
		./neovideconf.nix
		# ./sway
		# ./niri
  ];

	home.stateVersion = "25.11";

  programs = {
		zsh = {
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

		git = {
      enable = true;
      userName = "wololo";
      userEmail = "somedudz@protonmail.com";
		};


  	starship = {
     	enable = true;
     	enableZshIntegration = true;
  	};

		direnv = {
			enable = true;
			enableZshIntegration = true;
		};
	
		zoxide = {
			enable = true;
			enableZshIntegration = true;
		};
	
		aria2 = {
			enable = true;
		};

		mpv = {
			enable = true;
			scripts = with pkgs; [
				mpvScripts.modernx
			];
		};

		firefox = {
			enable = true;
		};
	};

}

