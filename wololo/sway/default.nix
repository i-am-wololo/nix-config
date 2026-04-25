 # everything related to sway

{pkgs, lib, ...} : {
	imports = [
		./services.nix
		../wms/foot.nix
		../wms/zathura.nix
	];
	
	home.packages = import ./packages.nix {inherit pkgs;};

	wayland.windowManager.sway = {
		checkConfig = false;
		# swayfx is broken on nixpkgs for now
		package = pkgs.swayfx;
		enable = true;
		config = import ./config.nix {inherit pkgs lib;};
		extraConfig = "
		blur enable \n
		blur_passes 2 \n

		";
	};

	programs.rofi = {
		enable = true;
		theme = builtins.fetchurl {
			url = "https://raw.githubusercontent.com/newmanls/rofi-themes-collection/refs/heads/master/themes/spotlight-dark.rasi";
			sha256 = "sha256:1hk4gcg0mvn91i2lygkhv8m51dq21zh4acdfs6kbrn78hk94rrng";
		};
	};

	home.pointerCursor = {
		enable = true;
		size = 24;
		name = "XCursor-Pro-Dark";
		package = pkgs.xcursor-pro;
		sway.enable = true;
		gtk.enable = true;
	};

	programs = {
	};
}
