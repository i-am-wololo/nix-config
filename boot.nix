{
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    initrd.luks.devices."luks-ef9656d7-49ad-4ec1-b8b1-fba2ba2d0d16".device = "/dev/disk/by-uuid/ef9656d7-49ad-4ec1-b8b1-fba2ba2d0d16";
}
