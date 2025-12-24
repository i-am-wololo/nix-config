{config, pkgs, ...} : {
    boot = {
        loader.systemd-boot.enable = true;
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
        ];
        loader.timeout = 0;
    };
}
