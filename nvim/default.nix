{...} : {
	
	imports = [
		./plugins
		./options.nix
		./keybinds
	];
	programs.nixvim = {
		enable = true;
		globals = {
			mapleader = ",";
			neovide_opacity = 0.2;
		};
		opts = {
			guifont = "Hack Nerd Font:h12";
		};
		clipboard = {
			register = "unnamedplus";
		};
	};
}

