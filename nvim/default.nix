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
		};
		clipboard = {
			register = "unnamedplus";
		};
	};
}

