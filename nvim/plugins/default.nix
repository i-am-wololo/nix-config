{pkgs, ...}:{
	imports = [
		./colorscheme.nix
		./mini.nix
		./treesitter.nix
		./completion.nix
		./lsps.nix
		./bar_line.nix
		./misc.nix
	];

	environment.systemPackages = with pkgs; [
		fzf
	];

	
	programs.nixvim.plugins = {
		telescope = {
			enable = false;
			extensions = {
				fzf-native.enable = true;
				zoxide.enable = true;
			};
			lazyLoad = {
				settings = {
				keys = [
					{
						__unkeyed-1 = "<leader>ff";
						__unkeyed-2 = "<cmd>Telescope fzf_native<CR>";
					}
					{
					__unkeyed-1 = "<leader>z";
					__unkeyed-2 = "<cmd>Telescope zoxide<CR>";
					}
				];
				};
			};
		};
		lz-n = {
			enable = true;
		};
	};
}
