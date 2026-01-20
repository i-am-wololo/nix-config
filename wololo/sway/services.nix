{pkgs, ...} : {
	services = {
		swayidle = {
			enable = true;
			timeouts = [
				{
					timeout = 300;
					command = "${pkgs.swaylock-effects}/bin/swaylock -f --screenshot --indicator --effect-blur 7x3";
				}
				{
					timeout = 660;
					command = "${pkgs.systemd}/bin/systemctl sleep";
				}
			];

			events = {
					before-sleep = "${pkgs.swaylock-effects}/bin/swaylock -f --screenshot --indicator --effect-blur 7x3";
				};
		};

		swaync = {
			enable = true;
		};
		gnome-keyring = {
			enable = true;
			components = [
				"secrets"
			];
		};

		polkit-gnome = {
			enable = true;
		};
		
		wlsunset = {
			enable = true;
			latitude = 43.70;
			longitude = 7.26;
		};
	};

}
