# module defining niri config and various other things

{pkgs, inputs, config, ...} : {
	imports = [
		./keybinds.nix
		./rules.nix
		./waybar.nix
		./services.nix
	];
	
	programs.niri.settings = {
		spawn-at-startup = [
				{command = ["foot" "--server"];}

			];
		input.keyboard.xkb = {
				layout = "fr,us";
				options = "grp:alt_space_toggle";
			};
	};

	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;
	};

	programs.foot = {
		enable = true;
		settings = {
			main = {
				font = "Hack Nerd Font:size=12";
			};
		};
	};

	home.packages = with pkgs; [
	];

}
