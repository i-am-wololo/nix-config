{lib, pkgs, ...} : {
	modifier = "Mod4";
	terminal = "foot";

	bindswitches = {
	};

	keybindings = lib.mkOptionDefault {
		"Mod4+q" = "kill";
		"Mod4+Return" = "exec footclient";
		"Mod4+d" = "exec rofi -show drun";
		"Mod4+n" = "exec neovide";
		"XF86AudioRaiseVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ +4%";
		"XF86AudioLowerVolume" = "exec pactl set-sink-volume @DEFAULT_SINK@ -4%";
		"XF86MonBrightnessUp" = "exec brightnessctl set +8%";
		"XF86MonBrightnessDown" = "exec brightnessctl set -8%";
		"Print" = "exec grimshot savecopy screen --notify";
		"Shift+Print" = "exec grimshot savecopy area --notify";
	};

	bindswitches = {
		"lid:on" = {
			reload = true;
			action = "output eDP-1 disable";
		};
		"lid:off" = {
			reload = true;
			action = "output eDP-1 enable";
		};
	};

	window = {
		titlebar = false;
	};

	gaps = {
		smartBorders = "on";
		smartGaps = true;
		outer = 16;
		inner = 10;
	};


	startup = [
		{
			command = "autotiling-rs";
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
		"type:touchpad" = {
			tap = "enabled";
			natural_scroll = "enabled";
		};
	};

	output = {
		"*" = {
			bg =	"/etc/wp/mountains.png fill" ;
		};
	};
}
