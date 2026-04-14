# gnome config

{pkgs, ...} : {
	services.desktopManager.gnome.enable = true;	
	environment.gnome.excludePackages = with pkgs; [
		gnome-tour
		gnome-maps
		gnome-console
	];

	environment.systemPackages = with pkgs; [
		ptyxis
		fractal
		dissent
		foliate
		gnomeExtensions.appindicator
		gnomeExtensions.blur-my-shell
		gnomeExtensions.dash2dock-lite
		gnome-extension-manager
		gnomeExtensions.power-off-options
		ptyxis
		blackbox-terminal
	];
programs.nautilus-open-any-terminal = {
  enable = true;
  terminal = "ptyxis";
};

	qt = {
	   enable = true;
	   platformTheme = "gnome";
	   style = "adwaita-dark";
	 };

}
