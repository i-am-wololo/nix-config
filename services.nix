{config, lib, pkgs, ...} : {
	services = {
		udev = {
			packages = [pkgs.sane-airscan];
			extraRules = ''
    SUBSYSTEM=="input", ATTRS{idVendor}=="2dc8", ATTRS{idProduct}=="3106", MODE="0660", GROUP="input"
			'';
		};
		avahi.enable =true;
		avahi.nssmdns4 = true;
		i2pd = {
			enable = true;
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

		flatpak.enable = true;
		gnome.gnome-keyring.enable = true;

		displayManager = {
				# ly = {
				# 	enable = false;
				# };
				gdm = {
					enable = true; 
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
		};
		udisks2 = {
			enable = true;
		};
		joycond = {
			enable = true;
		};
		sunshine = {
			enable = true;
			capSysAdmin = true;
			openFirewall = true;
		};
	};

	security.polkit.enable = true;
}

