{pkgs, inputs, ...} : {
    home.packages = with pkgs; [
			nerd-fonts.hack
			nerd-fonts.fira-code

			obs-studio
  		youtube-music
			chromium
  		keepassxc
			tor-browser
			lazygit
			unrar-wrapper
			p7zip
			logisim-evolution
			crystal
			shards
			imhex
			file
			wl-clipboard
			wl-clipboard-x11

			# mupen64plus
			rmg-wayland
			
			# discord
			# (discord.override {
			# 	withVencord = true;
			# })
			equibop


			
    ]++ [
			inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
		];
}
