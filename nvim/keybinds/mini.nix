{...} : {
	programs.nixvim.keymaps = [

		
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
			action.__raw = "function() MiniFiles.open() end";
			key = "<leader>n";
			mode = ["n"];
		}

		{
			action.__raw = "function() MiniSessions.write(vim.fn.input('Session Name > ')) end";
			key = "<leader>mk";
			mode = ["n"];
		}

		{
			action.__raw = "function() MiniSessions.select() end";
			key = "<leader>ss";
			mode = ["n"];
		}

	];
}
