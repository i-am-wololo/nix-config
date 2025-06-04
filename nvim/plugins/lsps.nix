{...} : {
	programs.nixvim.plugins = {
		lsp = {
			enable = false;
			servers = {
				tinymist.enable = true;
				texlab.enable = true;
				basedpyright.enable = true;
				# ruff.enable = true;
			};
		};
		trouble = {
			enable = false;
			lazyLoad = {
				settings = {
					keys = [
						{
							__unkeyed-1 = "<leader>xx";
							__unkeyed-2 = "<cmd>Trouble diagnostics toggle<CR>";
						}
					];
				};
			};
		};
	};
}
