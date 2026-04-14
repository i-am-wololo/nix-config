{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
      rpcs3
			pcsx2
			steam-run
			steam
			cemu
			rimsort
			cartridges
			mangohud
			# (retroarch.override {
			# 	cores = with libretro; [
			# 	];
			# })

	];
}
