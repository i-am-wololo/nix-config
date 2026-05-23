
{inputs, pkgs, ...} : {
	imports = [
		./packages.nix 
		./packages
		./neovideconf.nix
		./services.nix
		./sway
		# ./niri
  ];

	home.stateVersion = "26.05";


	gtk = {
		enable = true;
		theme = {
			name = "adw-gtk3";
			package = pkgs.adw-gtk3;
		};
		iconTheme = {
			name = "Colloid-Dark";
			package = pkgs.colloid-icon-theme;
		};
	};

  programs = {
		zsh = {
			enable = true;
			autosuggestion.enable = true;
			syntaxHighlighting.enable = true;
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

		git = {
      	enable = true;
				settings = {
					user = {
						name = "wololo";
						email = "somedudz@protonmail.com";
					};
				};
		};

		nheko = {
			enable = true;
		};

		aria2 = {
			enable = true;
		};

		mpv = {
			enable = true;
			scripts = with pkgs.mpvScripts; [
				cutter
				webtorrent-mpv-hook
				uosc
			];
		};

		# firefox = {
		# 	enable = true;
		# };

		obs-studio = {
			enable = true;
			plugins = with pkgs.obs-studio-plugins; [
				input-overlay
				obs-vkcapture
				wlrobs
				obs-vnc
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

		nixcord = import ./nixcordconfig.nix;

		spicetify = let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
   in{
			enable = true;
			enabledExtensions = with spicePkgs.extensions; [
				adblock
				betterGenres
				powerBar
				fullScreen	
			];
			enabledCustomApps = with spicePkgs.apps; [
				nameThatTune
				# {
				# 	src = pkgs.fetchFromGitHub {
				# 		owner = "Pithaya";
				# 		repo = "spicetify-apps";
				# 		# rev = "1433ef3";
				# 		# hash = "";
				# 		rootDir = "/custom-apps/eternal-jukebox";
				# 	};
				# 	name = "Jukebox";
				# }
			];
			theme = spicePkgs.themes.text;
		};

	};

}
