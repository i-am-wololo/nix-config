{pkgs, ...} : {
	programs.nixvim.plugins = {
		treesitter.enable = true;
		treesitter.grammarPackages = with pkgs.tree-sitter-grammars; [
			tree-sitter-nix
			tree-sitter-zig
			tree-sitter-go
			tree-sitter-vim
			tree-sitter-regex
			tree-sitter-lua
			tree-sitter-bash
			tree-sitter-markdown
			tree-sitter-markdown-inline
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


