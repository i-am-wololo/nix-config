{pkgs, ...} : {
	programs.nixvim.plugins = {
		treesitter.enable = true;
		treesitter.grammarPackages = with pkgs.tree-sitter-grammars; [
			tree-sitter-nix
			tree-sitter-zig
			tree-sitter-go
		];
		treesitter.settings = {
			highlight = {
				enable = true;
			};

			indent = {
				enable = true;
			};

		};
	};
}


