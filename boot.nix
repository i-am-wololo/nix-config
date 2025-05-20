{config, pkgs, pkgs-stable, ...} : {
    boot = {
        loader.systemd-boot.enable = true;
        loader.efi.canTouchEfiVariables = true;
        initrd.luks.devices."luks-ef9656d7-49ad-4ec1-b8b1-fba2ba2d0d16".device = "/dev/disk/by-uuid/ef9656d7-49ad-4ec1-b8b1-fba2ba2d0d16";
        # plymouth = {
        #     enable = true;
        #      theme = "NixOS BGRT";
        #      themePackages = with pkgs; [nixos-bgrt-plymouth];
        # };
        consoleLogLevel = 0;
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
