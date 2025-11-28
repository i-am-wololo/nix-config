{...} : {
	programs.nixvim.plugins = {
		barbar = {
			enable = false;
		};

		lualine = {
			enable = false;
			settings.options = {
				component_separators = {
					left = "";
					right = "";
				};

				section_separators = {
					left = "";
					right = "";
				};

			};
		};
	};
}
