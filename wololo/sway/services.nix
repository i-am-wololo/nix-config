{pkgs, ...} : {
	services.swayidle = {
		enable = true;
	};

	services.swaync = {
		enable = true;
	};
}
