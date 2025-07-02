
{pkgs, ...} : {
	home.packages = with pkgs; [
		librewolf
		gh
		jamesdsp
	];
}
