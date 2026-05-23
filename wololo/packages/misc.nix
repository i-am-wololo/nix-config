
{pkgs, ...} : {
	home.packages = with pkgs; [
		gh
		bat
		appimage-run
		bat-extras.batman
		bat-extras.batgrep
		jamesdsp
		cavalier
	];
}
