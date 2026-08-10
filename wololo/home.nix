
{inputs, pkgs, ...} : {
	imports = [
		./packages.nix 
		./packages
		./neovideconf.nix
		./services.nix
		# ./hyprland
		# ./sway
		./niri
		# ./agenixconfig.nix
  ];

	home.stateVersion = "26.05";
	services.gnome-keyring.enable = true;


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

		zellij = {
			enable = false;
			enableZshIntegration = true;
			settings = {
				theme = "ansi";
				show_startup_tips = false;
			};
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
			enable = false;
		};

		nixcord = import ./nixcordconfig.nix;

		spicetify = let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
   in{
			enable = true;
			alwaysEnableDevTools = true;
			enabledExtensions = with spicePkgs.extensions; [
				adblock
				powerBar
			];
			wayland = true;
			theme = spicePkgs.themes.text;
		};

	};

}
