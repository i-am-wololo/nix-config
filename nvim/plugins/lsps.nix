{...} : {
	programs.nixvim.plugins = {
		lsp = {
			enable = true;
			servers = {
				ts_ls = {
					enable = true;
				};
				rust_analyzer = {
					enable = true;
					installCargo = true;
					installRustc = true;
				};
				tinymist.enable = true;
				texlab.enable = true;
				basedpyright.enable = true;
				nixd.enable = true;
				zls = {
					enable = true;
					packageFallback = true;
				};
			};
			keymaps = {
			};
		};
		trouble = {
			enable = true;
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
