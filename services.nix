{config, lib, ...} : {
	services = {
		i2pd = {
			enable = false;
			proto = {
				http = {
					enable = true;
				};

				httpProxy = {
					enable = true;
				};
				socksProxy = {
					enable = true;
				};
			};
		};
		fprintd.enable = true;

		desktopManager.plasma6.enable = false;
		desktopManager.gnome.enable = false;	

		displayManager = {
				gdm = {
					enable = true; 
					wayland = true;
				};

				sddm = {
					enable = false; 
					wayland = {
						enable = true;
					};
				};

				autoLogin = {
					enable = true;
					user = "wololo";
				};
			};
		tlp = {
			enable = true;
			settings = {
			};
		};
	};

	security.polkit.enable = true;
}

