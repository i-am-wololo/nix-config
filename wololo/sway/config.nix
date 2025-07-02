{lib, pkgs, ...} : {
	modifier = "Mod4";
	terminal = "foot";
	bindswitches = {
	};

	keybindings = lib.mkOptionDefault {
		"Mod4+q" = "kill";
		"Mod4+Return" = "exec foot";
	};

	startup = [
		{
			command = "autotiling";
		}
	];

	input = {
		"keyboard" = {
			xkb_layout = "us,fr";
			xkb_options = "grp:alt_space_toggle";

		};
	};
}
