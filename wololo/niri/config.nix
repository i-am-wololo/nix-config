{config, lib, pkgs}: {
		prefer-no-csd = true;

		input.keyboard.xkb = {
				layout = "us,fr";
				options = "grp:alt_space_toggle";
			};
		binds =  with config.lib.niri.actions; {
			"Mod+Return".action.spawn = "footclient";
			"Mod+d".action.spawn = ["rofi" "-show" "drun"];

			"Mod+q".action = close-window;

			"Mod+h".action = focus-column-left;
			"Mod+j".action = focus-window-or-workspace-down;
			"Mod+k".action = focus-window-or-workspace-up;
			"Mod+f".action = maximize-column;
			"Mod+Shift+F".action = fullscreen-window;
			"Mod+l".action = focus-column-right;
			"Mod+o".action = consume-or-expel-window-left;
			"Mod+p".action = consume-or-expel-window-right;
			"Mod+Shift+h".action = move-column-left;
			"Mod+Shift+j".action = move-window-down-or-to-workspace-down;
			"Mod+Shift+k".action = move-window-up-or-to-workspace-up;
			"Mod+Shift+l".action = move-column-right;
			"Mod+u".action = focus-workspace-down;
			"Mod+i".action = focus-workspace-up;
			"Mod+Shift+u".action = move-workspace-down;
			"Mod+Shift+i".action = move-workspace-up;
			"XF86AudioRaiseVolume".action.spawn = [ "pactl" "set-sink-volume" "@DEFAULT_SINK@" "+4%" ];
			"XF86AudioLowerVolume".action.spawn = [ "pactl" "set-sink-volume" "@DEFAULT_SINK@" "-4%" ];
			"XF86MonBrightnessUp".action.spawn = [ "${pkgs.brightnessctl}/bin/brightnessctl" "set" "8%+" ];
			"XF86MonBrightnessDown".action.spawn = [ "${pkgs.brightnessctl}/bin/brightnessctl" "set" "8%-" ];
			"Print".action.spawn = [ "${pkgs.sway-contrib.grimshot}/bin/grimshot" "savecopy" "screen" "--notify" ];
			"Shift+Print".action.spawn = [ "${pkgs.sway-contrib.grimshot}/bin/grimshot" "savecopy" "area" "--notify" ];
			"XF86AudioPrev".action.spawn = [ "${pkgs.playerctl}/bin/playerctl" "previous" ];
			"XF86AudioNext".action.spawn = [ "${pkgs.playerctl}/bin/playerctl" "next" ];
			"XF86AudioPlay".action.spawn = [ "${pkgs.playerctl}/bin/playerctl" "play-pause" ];
	};

	outputs = {
		eDP-1 = {
			scale = 1.0;
		};
	};
	window-rules = [
		{
			matches = [
				{app-id = "^footclient$";}
				{app-id = "^neovide$";}
			];
			background-effect.blur = false;
		}
	];
	layer-rules = [
		{
			matches = [{namespace = "^wallpaper$";}];
			place-within-backdrop = true;
		}
		{
			matches = [{namespace = ".waybar-wrapped"; layer = "top";}];
		}
	];
	blur.enable = false;
	layout = {
		background-color = "transparent";
	};

	spawn-at-startup = [
		{argv = ["${pkgs.swaybg}/bin/swaybg" "--image" "/etc/wp/mountains.png"];}
		{argv = ["keepassxc"];}
	];
}
