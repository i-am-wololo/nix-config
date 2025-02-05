{inputs, system, home, ...} : 
{
	  packages = [ inputs.nixvim-config.packages.${system}.default ];
	  
	  programs.nixvim = {
		enable = true;
	  };
}
