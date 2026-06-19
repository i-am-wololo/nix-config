{pkgs, ...}: {
	home.packages = with pkgs; [
    	tetrio-desktop
			gamescope
			dolphin-emu
			# rpcs3
			# (rpcs3.overrideAttrs (prev: {
			# 	cmakeFlags = prev.cmakeFlags ++ [ (lib.cmakeBool "BUILD_SHARED_LIBS" false) ];
			# }))
			pcsx2
			shadps4-qtlauncher
			eden
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
