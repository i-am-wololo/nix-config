 # everything related to sway

{pkgs, ...} : {
	imports = [
		./services.nix
	];
	
	home.packages = import ./packages.nix {inherit pkgs;};

	wayland.windowManager.sway = {
		checkConfig = false;
		# swayfx is broken on nixpkgs for now
		package = pkgs.swayfx;
		enable = true;
		config = import ./config.nix;
		extraConfig = "
		blur enable \n
		blur_passes 2 \n

		";
	};

	programs.rofi = {
		enable = true;
	};

	home.pointerCursor = {
		enable = true;
		size = 24;
		name = "XCursor-Pro-Dark";
		package = pkgs.xcursor-pro;
		sway.enable = true;
		gtk.enable = true;
	};


	programs.foot = import ../wms/foot.nix;
}
