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
		package = pkgs.rofi-wayland;
	};

	programs.foot = import ./foot.nix;

}
