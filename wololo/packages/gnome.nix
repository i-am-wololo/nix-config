{pkgs, ...} : {
	home.packages = with pkgs; [
		ptyxis
		cartridges
		fractal
		dissent
		(weechat.override {
			configure = {...} : {
				scripts = with pkgs.weechatScripts; [
					weechat-go
					weechat-notify-send
				];
			};
		})
	];
}
