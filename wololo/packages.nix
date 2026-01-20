{pkgs, inputs, ...} : {
	home.packages = with pkgs; [
		nerd-fonts.hack
		nerd-fonts.fira-code

		pear-desktop
		keepassxc
		tor-browser
		lazygit
		unrar-wrapper
		p7zip
		logisim-evolution
		imhex
		(cutter.withPlugins (passthru: with passthru; [
			jsdec
			rz-ghidra	
		]))
		file
		wl-clipboard-x11
		icoextract
		rmg-wayland
		simplex-chat-desktop
		feather
		(discord.override {
			withOpenASAR = true;
			withEquicord = true;
		})


		(weechat.override {
			configure = {...} : {
				scripts = with pkgs.weechatScripts; [
					weechat-go
					weechat-notify-send
				];
			};
		})

		(bottles.override {
			removeWarningPopup = true;
		})
	]++ [
		inputs.ps3dec.packages.${pkgs.stdenv.hostPlatform.system}.default
		inputs.prism.packages.x86_64-linux.default
	];
}
