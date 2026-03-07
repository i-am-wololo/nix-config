{pkgs, ...}: {
	home.packages = with pkgs; [
		(discord.override {
			withOpenASAR = true;
			withVencord = true;
		})
		(weechat.override {
			configure = {...} : {
				scripts = with pkgs.weechatScripts; [
					weechat-go
					weechat-notify-send
				];
			};
		})
		simplex-chat-desktop
	];
}
