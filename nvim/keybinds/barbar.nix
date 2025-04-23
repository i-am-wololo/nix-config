{...} : {

	programs.nixvim.keymaps = let mode = ["n"]; in [
		{
			inherit mode;
			key = "<A-c>";
			action = "<cmd>BufferClose<cr>";
		}

		{
			inherit mode;
			key = "<C-p>";
			action = "<cmd>BufferPick<cr>";
		}

		{
			inherit mode;
			key = "<C-S-p>";
			action = "<cmd>BufferPickDelete<cr>";
		}
		
	];

}
