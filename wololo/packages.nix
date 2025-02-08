{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        keepassxc
        neovide
	tor-browser
        equibop
	lazygit
	unrar-wrapper

        # Games
        tetrio-desktop
        rpcs3
    ];
}
