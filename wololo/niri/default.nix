# module defining niri config and various other things

{pkgs, ...} : {
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
				layout = "us,fr";
				options = "grp:alt_space_toggle";
			};
	};

	programs.rofi = {
		enable = true;
		theme = builtins.fetchUrl {
			url = "https://raw.githubusercontent.com/newmanls/rofi-themes-collection/refs/heads/master/themes/spotlight-dark.rasi";
		};
	};

	programs.foot = import ./foot.nix;

}
