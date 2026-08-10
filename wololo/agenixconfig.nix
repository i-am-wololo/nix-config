{...} : {
	sops =  {
		age.keyFile = "/home/wololo/.config/sops/age/keys.txt";
		# TODO: put in gitignore
		defaultSopsFile = ./secrets.yaml;
	};
}
