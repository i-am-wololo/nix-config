{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
			prismlauncher
      rpcs3
			steam-run
			steam
			flycast
			cemu
			# (retroarch.override {
			# 	cores = with libretro; [
			# 	];
			# })

	];
}
