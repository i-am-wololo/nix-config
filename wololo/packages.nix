{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        keepassxc
        neovide
	tor-browser
        equibop
	lazygit

        # Games
        bottles
        tetrio-desktop
        rpcs3
    ];
}
