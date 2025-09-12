# gnome config

{pkgs, ...} : {
	environment.gnome.excludePackages = with pkgs; [
		gnome-tour
		gnome-console
		gnome-maps
	];
}
