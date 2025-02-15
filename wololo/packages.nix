{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
	chromium
        keepassxc
        neovide
	tor-browser
        equibop
	lazygit
	unrar-wrapper
	logisim-evolution

	kdePackages.alligator
	kdePackages.akregator
	kdePackages.merkuro

        # Games
        tetrio-desktop
	prismlauncher
        rpcs3
    ];
}
