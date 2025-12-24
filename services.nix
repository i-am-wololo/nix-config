{config, lib, ...} : {
	services = {
		blocky = {
			enable = false;
			settings = {
				upstreams.groups.default = [
					"https://one.one.one.one/dns-query" # Using Cloudflare's DNS over HTTPS server for resolving queries.
				];
				# For initially solving DoH/DoT Requests when no system Resolver is available.
				bootstrapDns = {
					upstream = "https://one.one.one.one/dns-query";
					ips = [ "1.1.1.1" "1.0.0.1" ];
				};
				#Enable blocking of certain domains.
				blocking = {
					denylist = {
						#Adblocking
						ads = ["https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"];
					};
					#Configure what block categories are used
					clientGroupsBlock = {
						default = [ "ads" ];
						};
					};
			};
		};

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
		desktopManager.plasma6.enable = false;

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
			enable = false;
			settings = {
			};
		};
	};

	security.polkit.enable = true;
	security.pam.services.wololo.enableGnomeKeyring = true;
}

