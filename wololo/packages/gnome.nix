{pkgs, ...} : {
	home.packages = with pkgs; [
		ptyxis
		fractal
		dissent
	];
}
