{...} : {
	programs.nixvim.colorschemes.kanagawa = {
		enable = true;
		settings = {
			theme = "dragon";
			dimInactive = true;
			transparent = true;
		};
	};
	programs.nixvim.colorscheme = "kanagawa-dragon";
}
