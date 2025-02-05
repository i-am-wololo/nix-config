{inputs, system, home, ...} : 
{
	  packages = [ inputs.nixvim.packages.${system}.default ];
	  
	  programs.nixvim = {
		enable = true;
		plugins = {
			lualine = {
				enable = true;
			};
		};
	  };
}
