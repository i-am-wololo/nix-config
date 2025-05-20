{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
			torzu
			prismlauncher
      rpcs3
			steam-run
			steam
			# (retroarch.override {
			# 	cores = with libretro; [
			# 	];
			# })
			duckstation

	];
}
