{...} : {

	programs.nixvim.plugins.mini = {
		enable = true;
		autoLoad = true;
		modules = {
			starter = {};
			files = {};
			pick = {};
			git = {};
		};
	};

}
