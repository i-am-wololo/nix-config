# everything related to sway

{pkgs, config, ...} : {
	imports = [
		./services.nix
	];

	wayland.windowManager.sway = {
		# swayfx is broken on nixpkgs for now
		# package = pkgs.swayfx;
		enable = true;
		config = import ./config.nix;
	};

	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;
	};

	# programs.swaylock = {
	# 	enable = true;
	# };

	programs.foot = {
		enable = true;
		settings = {
			main = {
				font = "Hack Nerd Font:size=12";
			};
		};
	};
}
