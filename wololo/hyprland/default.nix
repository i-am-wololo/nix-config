{...} : {
	imports = [
		./services.nix
	];
	wayland.windowManager.hyprland = {
		enable = true;
	};

	programs = {
		hyprlock = {
			enable = true;
		};
		foot = import ../wms/foot.nix;
	};
}
