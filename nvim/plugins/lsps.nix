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
				nim_langserver.enable = true;
				cmake.enable = true;
				emmet_language_server.enable = true;


				mesonlsp.enable = true;
				clangd.enable = true;	
				zls = {
					enable = true;
					packageFallback = true;
				};
				ghcide = {
					enable = false;
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
