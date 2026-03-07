
{pkgs, ...} : {
	home.packages = with pkgs; [
		gh
		jamesdsp
		cavalier
	];
}
