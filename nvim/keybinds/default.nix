{...}: {
imports = [
		./mini.nix
		./barbar.nix
	];


	
	programs.nixvim.keymaps = let mode = [ "n" "v"]; in [
		{
			key = "<S-h>";
			action = "<C-w>h";
			inherit mode;
		}
		
		{
			key = "<S-j>";
			action = "<C-w>j";
			inherit mode;
		}
		
		{
			key = "<S-k>";
			action = "<C-w>k";
			inherit mode;
		}
		
		{
			key = "<S-l>";
			action = "<C-w>l";
			inherit mode;
		}
		
		{
			key = "<A-h>";
			action = "<C-W><S-h>";
			inherit mode;
		}
		
		{
			key = "<A-j>";
			action = "<C-W><S-j>";
			inherit mode;
		}
		
		{
			key = "<A-k>";
			action = "<C-W><S-k>";
			inherit mode;
		}
		
		{
			key = "<A-l>";
			action = "<C-W><S-l>";
			inherit mode;
		}
		
		{
			key = "<C-Space>";
			action = "<C-\\><C-n>";
			mode = ["t"];
		}
		
		{
			key = "jk";
			action = "<ESC>";
			mode = ["i"];
		}
	];
}
