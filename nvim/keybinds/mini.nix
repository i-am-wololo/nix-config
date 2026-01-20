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
			action.__raw = ''
			function()
				session = MiniPick.start({ 
					source = {
						items = vim.fn.readdir(vim.fn.expand("~/.config/nvim/sessions/"))
						}
					})
				MiniSessions.read(session)
			end
			'';
			key = "<leader>ss";
			mode = ["n"];
		}

	];
}
