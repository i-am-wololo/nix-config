{...} : {
	programs.nixvim.plugins.mini = {
		enable = true;
		autoLoad = true;
		modules = {
			starter = {};
			files = {};
			pick = {};
			indentscope = {};
			pairs = {};
			git = {};
			sessions = {
				directory = "~/.config/nvim/sessions";
			};
		};
	};
}
