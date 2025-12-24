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
			 # neovide_opacity = 1.0;
		};
		clipboard = {
			register = "unnamedplus";
		};
	};
}

