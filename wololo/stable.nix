{pkgs, pkgs-stable, ...}:
{
	home.packages = with pkgs-stable; [
		bottles
	];
}
