{...} : {
	programs.nixvim.plugins = {
		barbar = {
			enable = true;
		};

		lualine = {
			enable = true;
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
