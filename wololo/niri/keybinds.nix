{config, ...} : {

	programs.niri.settings.binds = with config.lib.niri.actions; {
		"Mod+Return".action = spawn "footclient";
		"Mod+d".action = spawn ["rofi" "-show" "drun"];

		"Mod+q".action = close-window;

		"Mod+h".action = focus-column-left;
		"Mod+j".action = focus-window-or-workspace-down;
		"Mod+k".action = focus-window-or-workspace-up;
		"Mod+l".action = focus-column-right;
		"Mod+Shift+h".action = move-column-left;
		"Mod+Shift+j".action = move-window-down-or-to-workspace-down;
		"Mod+Shift+k".action = move-window-up-or-to-workspace-up;
		"Mod+Shift+l".action = move-column-right;
		"Mod+u".action = focus-workspace-down;
		"Mod+i".action = focus-workspace-up;
		"Mod+Shift+u".action = move-workspace-down;
		"Mod+Shift+i".action = move-workspace-up;
	};

}
