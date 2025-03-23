{...} : {
	programs.nixvim.keymaps = [
		{
			action = "<CMD>lua MiniFiles.open()<CR>";
			key = "<leader>n";
			mode = ["n"];
		}
		
		{
			action = "<CMD>Pick files <CR>";
			key = "<leader>ff";
			mode = ["n"];
		}

		{
			action = "<CMD>Pick grep_live <CR>";
			key = "<leader>fg";
			mode = ["n"];
		}

		{
		action = "<CMD>lua MiniSessions.write(vim.fn.input('Session Name > '))<CR>";
			key = "<leader>mk";
			mode = ["n"];
		}

	];
}
