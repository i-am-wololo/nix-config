{pkgs, ...}: {
	home.packages = with pkgs; [
		(weechat.override {
			configure = {...} : {
				scripts = with pkgs.weechatScripts; [
					weechat-go
					weechat-notify-send
				];
			};
		})
		iamb
		simplex-chat-desktop
	];

}
