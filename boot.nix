{ pkgs, lib, ...} : {

		swapDevices = [
			{
				device = "/var/lib/swap";
				size = 8*1024;
			}
		];

    boot = {
				loader.systemd-boot.enable = lib.mkForce false;

				lanzaboote = {
					enable = true;
					pkiBundle = "/var/lib/sbctl";
					autoGenerateKeys.enable = true;
					autoEnrollKeys = {
						enable = true;
						autoReboot = true;
					};

				};
        loader.efi.canTouchEfiVariables = true;
        plymouth = {
            enable = true;
             theme = "nixos-bgrt";
             themePackages = with pkgs; [nixos-bgrt-plymouth];
        };
        consoleLogLevel = 3;
        initrd.verbose = false;
        kernelParams = [
        "quiet"
        "splash"
        "boot.shell_on_fail"
        "loglevel=3"
        "rd.systemd.show_status=false"
        "rd.udev.log_level=3"
        "udev.log_priority=3"
				"resume_offset=7712768"
        ];
				resumeDevice = "/dev/disk/by-uuid/041acf8e-7b9c-4d99-a01d-534a692edfa2";
        loader.timeout = 0;
    };
}
