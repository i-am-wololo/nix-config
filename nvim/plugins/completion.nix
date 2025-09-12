{...} : {
	programs.nixvim.plugins = {
		coq-nvim = {
			# takes too long to load and sometimes freezes
			enable = false;
			installArtifacts = true;
			settings = {
				auto_start = "shut-up";
			};
		};

		blink-cmp = {
			enable = false;
			settings = {
				signature.enable = true;
				keymap.preset = "super-tab";
			};
		};
	};
}
