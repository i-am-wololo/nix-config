{pkgs, ...} : {
	home.packages = with pkgs; [
		kdePackages.akregator
		kdePackages.merkuro
		kdePackages.filelight
		kdePackages.konversation
		kdePackages.neochat
		kdePackages.kasts
		kdePackages.kmail
	];
}
