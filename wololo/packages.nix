{config, pkgs, inputs, ...} : {
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

			kdePackages.akregator
			kdePackages.merkuro
			kdePackages.filelight
			kdePackages.konversation
			kdePackages.neochat
			kdePackages.kasts

        # Games
    	tetrio-desktop
			prismlauncher
      rpcs3
			flycast
    ]++ [
			inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
		];
}
