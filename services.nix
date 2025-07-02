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

  # services.gnome.gnome-keyring.enable = true;

	# security.polkit.enable = true;
}
