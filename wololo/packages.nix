{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        equibop
        keepassxc
        neovide
	tor-browser

        # Games
        bottles
        tetrio-desktop
        rpcs3
    ];
}
