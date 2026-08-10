{...} : {
	programs.nixvim.plugins = {
		barbar = {
			enable = false;
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

		airline = {
			enable = false;
			settings = {
			};
		};
	};
}
