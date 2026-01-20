{...} : {
	programs.nixvim.plugins.mini = {
		enable = true;
		autoLoad = true;
		modules = {
			starter = {};
			pick = {};
			indentscope = {};
			files = {};
			pairs = {};
			git = {};
			sessions = {
				directory = "~/.config/nvim/sessions";
			};
		};
	};
}
