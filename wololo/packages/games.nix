{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
      rpcs3
			pcsx2
			steam-run
			steam
			flycast
			cemu
			vinegar
			rimsort
			# (retroarch.override {
			# 	cores = with libretro; [
			# 	];
			# })

	];
}
