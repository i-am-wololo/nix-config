# gnome config

{pkgs, ...} : {
	services.desktopManager.gnome.enable = true;	
	environment.gnome.excludePackages = with pkgs; [
		gnome-tour
		gnome-maps
	];

	environment.systemPackages = with pkgs; [
		gnomeExtensions.appindicator
		gnome-extension-manager
		ptyxis
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
