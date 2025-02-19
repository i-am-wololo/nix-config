{config, pkgs, ...} : {
    home.packages = with pkgs; [
			nerd-fonts.hack
			nerd-fonts.fira-code
  		youtube-music
			chromium
  		keepassxc
			tor-browser
  		equibop
			lazygit
			unrar-wrapper
			logisim-evolution

			kdePackages.alligator
			kdePackages.akregator
			kdePackages.merkuro
			kdePackages.filelight

        # Games
        tetrio-desktop
				prismlauncher
        rpcs3
	flycast
    ];
}
