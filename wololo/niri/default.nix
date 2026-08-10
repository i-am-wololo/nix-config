# module defining niri config and various other things

{pkgs, config, lib, ...} : {
	imports = [
		./services.nix
		../wms/foot.nix
		../wms/zathura.nix
	];

	home.packages = with pkgs; [
		xwayland-satellite
		nautilus
		pavucontrol
		waybar-mpris
	];
	
	programs.niri = {
		settings = import ./config.nix {inherit config lib pkgs;};
	};

	programs.rofi = {
		enable = true;
		theme = builtins.fetchurl {
			url = "https://raw.githubusercontent.com/newmanls/rofi-themes-collection/refs/heads/master/themes/spotlight-dark.rasi";
			sha256 = "sha256:1hk4gcg0mvn91i2lygkhv8m51dq21zh4acdfs6kbrn78hk94rrng";
		};
	};

	programs.waybar = {
		enable = true;
		systemd.enable = true;
		style = builtins.readFile ../wms/waybar.css;
	};

xdg.configFile."${config.xdg.configHome}/waybar/config.jsonc" = {
	source = ../wms/waybar.jsonc;
};

	home.pointerCursor = {
		enable = true;
		size = 24;
		name = "XCursor-Pro-Dark";
		package = pkgs.xcursor-pro;
		sway.enable = true;
		gtk.enable = true;
	};

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-gnome
    ];
    config = {
      common.default = [ "gnome" ];
    };
  };


}
