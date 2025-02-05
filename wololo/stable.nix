{pkgs, inputs, ...}:
{
	home.packages = with inputs.stable; [
		bottles
	]
}
