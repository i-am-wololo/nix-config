{pkgs, nu, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
			pcsx2
			shadps4-qtlauncher
			umu-launcher
			nero-umu
			eden
			steam-run
			steam
			cemu
			# rimsort
			mangohud
			# (retroarch.override {
			# 	cores = with libretro; [
			# 	];
			# })

	];
	# ] ++ with nu.[];
}
