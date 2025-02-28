# module defining niri config and various other things

{pkgs, inputs, ...} : {
	imports = [
		./keybinds.nix
		./rules.nix
	];

	programs.niri.settings = {
	spawn-at-startup = [
			{command = ["foot"];}

		];
	input.keyboard.xkb = {
			layout = "en,fr";
			options = "grp:alt_space_toggle"
		}
	};

	home.packages = with pkgs; [
	];

}
