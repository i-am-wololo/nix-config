{pkgs, ...} : {
	services.swayidle = {
		enable = true;
		timeouts = [
			{
				timeout = 60;
				command = "${pkgs.swaylock}/bin/swaylock -f -c";
			}
			{
				timeout = 660;
				command = "${pkgs.systemd}/bin/systemctl sleep";
			}
		];

		events = {
				before-sleep = "${pkgs.swaylock}/bin/swaylock -f -c";
			};
	};

	services.swaync = {
		enable = true;
	};
	services.gnome-keyring = {
		enable = true;
		components = [
			"secrets"
		];
	};

	services.polkit-gnome = {
		enable = true;
	};
}
