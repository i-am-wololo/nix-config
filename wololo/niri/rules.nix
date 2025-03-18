{...} : {
	programs.niri.settings = {
			window-rules = [
				{
					matches = [{title = "^foot$";}];
					default-column-width.proportion = 0.33;
				}
			];
		layout = {
		};
	};
}
