# i usually put dependencies into a project's shell.nix, but zls needs zig to be systemwide to work
{pkgs, ...}: {
	home.packages = with pkgs;[
		docker-compose	
		imhex
		(cutter.withPlugins (passthru: with passthru; [
			jsdec
			rz-ghidra	
		]))
	];
}
