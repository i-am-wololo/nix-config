{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
			torzu
			prismlauncher
      rpcs3
			flycast
			steam-run
			steam

	];
}
