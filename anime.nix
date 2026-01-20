{...}: 
let
  aagl-gtk-on-nix = import (builtins.fetchTarball {
		url = "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz";
		sha256 = "sha256:0ps1aakimrkf5hgz07pwlg8f5aza8vqh04svdx4pnby5pgqr90j3";
	
	});
in
{
 nix.settings = {
    substituters = [ "https://ezkea.cachix.org" ];
    trusted-public-keys = [ "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" ];
  };
  imports = [
    aagl-gtk-on-nix.module
  ];

  programs.anime-game-launcher.enable = true;
	programs.sleepy-launcher.enable = true;
}
