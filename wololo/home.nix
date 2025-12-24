
{pkgs, ...} : {
	imports = [
		./packages.nix 
		./packages
		./neovideconf.nix
		./services.nix
		./sway
		# ./niri
  ];

	home.stateVersion = "25.11";


	gtk = {
		enable = true;
		theme = {
			name = "adw-gtk3";
			package = pkgs.adw-gtk3;
		};
	};

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
				settings = {
					user = {
						name = "wololo";
						email = "somedudz@protonmail.com";
					};
				};
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

		# firefox = {
		# 	enable = true;
		# };

		obs-studio = {
			enable = true;
			plugins = with pkgs.obs-studio-plugins; [
				input-overlay
			];
		};

		librewolf = {
			enable = true;
			policies = {
				Proxy = {
					Mode = "manual";
					HTTPProxy = "127.0.0.1:4444";
					SOCKSProxy = "127.0.0.1:4447";
				};
			};
		};
		
		floorp = {
			enable = true;
		};

		vesktop = {
			enable = true;
			settings = {
				arRPC = true;
				checkUpdates = false;
				appBadge = true;
			};
		};

	};

}

