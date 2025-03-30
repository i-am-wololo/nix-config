{pkgs, inputs, ...} : {
    home.packages = with pkgs; [
			nerd-fonts.hack
			nerd-fonts.fira-code

			obs-studio
  		youtube-music
			chromium
  		keepassxc
			tor-browser
			mpv
  		equibop
			lazygit
			unrar-wrapper
			p7zip
			logisim-evolution

			kdePackages.akregator
			kdePackages.merkuro
			kdePackages.filelight
			kdePackages.konversation
			kdePackages.neochat
			kdePackages.kasts

      # Games
    	tetrio-desktop
			dolphin-emu
			torzu
			prismlauncher
      rpcs3
			flycast
			steam-run

			crystal
			shards
			imhex


			
    ]++ [
			inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
		];
}
