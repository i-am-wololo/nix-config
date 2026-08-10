{pkgs, helium, ...} : {
	home.packages = with pkgs; [
		nerd-fonts.hack
		nerd-fonts.fira-code

		keepassxc
		tor-browser
		pear-desktop
		lazygit
		unrar-wrapper
		p7zip
		logisim-evolution
		file
		wl-clipboard-x11
		feather
		tor

	]++ [
		helium.packages.${pkgs.stdenv.hostPlatform.system}.default
		# inputs.prism.packages.x86_64-linux.default
	];
}
