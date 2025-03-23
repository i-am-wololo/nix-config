{...} : {
	programs.nixvim.plugins.lsp = {
		enable = true;
		servers = {
			zls.enable = true;
			gopls.enable = true;
			tinymist.enable = true;
			crystalline.enable = true;

			# python
			# basedpyright.enable = true;
			# ruff.enable = true;

		};
	};
}
