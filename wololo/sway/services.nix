{pkgs, ...} : {
	services.swayidle = {
		enable = true;
		timeouts = [
			{
				timeout = 30;
				command = "swaylock -f -c";
			}

			{
				timeout = 60;
				command = "swaymsg output * power off;";
			}

			{
				timeout = 120;
				command = "systemctl hibernate";
			}
		];

		events = [
			{
				event = "before-sleep";
				command = "swaylock; systemctl hibernate";
			}

		];
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
