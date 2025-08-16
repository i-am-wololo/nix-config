{pkgs, inputs, ...} : {
    home.packages = with pkgs; [
			nerd-fonts.hack
			nerd-fonts.fira-code

			obs-studio
  		youtube-music
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
			wl-clipboard-x11
			rmg-wayland
			equibop

			(bottles.override {
				removeWarningPopup = true;
			})
    ]++ [
			inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
		];
}
