{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        keepassxc
        neovide
	tor-browser
        equibop
	lazygit

        # Games
        tetrio-desktop
        rpcs3
    ];
}
