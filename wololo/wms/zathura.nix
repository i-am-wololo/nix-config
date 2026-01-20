{lib, ...}:
{
	programs.zathura = { 
		enable = true;
		options = {
			recolor = "true";
			selection-clipboard = "clipboard";

			default-bg = "#000000";
			default-fg = "#DCD7BA";

			statusbar-bg = "#393836";
			statusbar-fg = "#DCD7BA";

			inputbar-bg = "#000000";
			inputbar-fg = "#DCD7BA";

			notification-bg = "#000000";
			notification-fg = "#DCD7BA";

			notification-error-bg = "#c4746e";
			notification-error-fg = "#DCD7BA";

			notification-warning-bg = "#c4b28a";
			notification-warning-fg = "#393836";

			highlight-color = "#363646";
			highlight-active-color = "#938AA9";

			completion-bg = "#393836";
			completion-fg = "#938AA9";

			completion-highlight-fg = "#DCD7BA";
			completion-highlight-bg = "#435965";

			search-highlight-fg = "#698a9b";
			search-highlight-bg = "#aca9a4";

			recolor-lightcolor = "#000000";
			recolor-darkcolor = "#DCD7BA";

			index-active-fg = "#DCD7BA";
			index-active-bg = "#000000";
			render-loading-bg = "#000000";
			render-loading-fg = "#DCD7BA";
		};
	};
}
