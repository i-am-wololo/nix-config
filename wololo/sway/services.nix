{pkgs, ...} : {
	services.swayidle = {
		enable = true;
	};

	services.swaync = {
		enable = true;
	};

	services.gnome-keyring = {
		enable = true;
	};
}
