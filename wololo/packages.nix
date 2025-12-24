{pkgs, inputs, ...} : {
    home.packages = with pkgs; [
			nerd-fonts.hack
			nerd-fonts.fira-code

  		youtube-music
  		keepassxc
			tor-browser
			lazygit
			unrar-wrapper
			p7zip
			logisim-evolution
			imhex
			file
			wl-clipboard-x11
			icoextract
			rmg-wayland
			simplex-chat-desktop
			feather



			(bottles.override {
				removeWarningPopup = true;
			})
    ]++ [
			inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
			inputs.prism.packages.x86_64-linux.default
		];
}
