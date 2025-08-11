{config, lib, ...} : {
	services.i2pd = {
		enable = false;
		# proto = {
		# 	http = {
		# 		enable = true;
		# 	};
		#
		# 	httpProxy = {
		# 		enable = true;
		# 	};
		# 	socksProxy = {
		# 		enable = true;
		# 	};
		#
		# };
	};


	security.polkit.enable = true;
	services.displayManager = {
		gdm = {
			enable = false;
			wayland = true;
		};

		sddm = {
			enable = true;
			wayland = {
				enable = true;
			};
		};

		autoLogin = {
			enable = true;
			user = "wololo";
		};
	};

  services.fprintd = {
    enable = true;
  };
	
	# plasma DE
	services.desktopManager.plasma6.enable = true;
}

