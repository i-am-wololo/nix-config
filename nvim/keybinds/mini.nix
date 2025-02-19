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
			];
}
