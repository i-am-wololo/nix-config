{lib, pkgs, ...} : {
	modifier = "Mod4";
	terminal = "foot";

	bindswitches = {
	};

	keybindings = lib.mkOptionDefault {
		"Mod4+q" = "kill";
		"Mod4+Return" = "exec foot";
		"Mod4+d" = "exec rofi -show drun";
		"Mod4+n" = "exec neovide";
	};

	window = {
		titlebar = false;
	};

	gaps = {
		smartGaps = true;
		outer = 16;
		inner = 10;
	};

	output = {
		eDP-1 = {
			bg =	"./wp/quake.png fill" ;
		};
	};

	startup = [
		{
			command = "autotiling";
		}

		{
			command = "keepassxc";
		}
	];

	bindkeysToCode = true;
	input = {
		"*" = {
			xkb_layout = "us,fr";
			xkb_options = "grp:alt_space_toggle";

		};
	};
}
