{...} : {
	programs.nixvim.plugins.lsp = {
		enable = true;
		servers = {
			zls.enable = true;
			tinymist.enable = true;
		};
	};
}
