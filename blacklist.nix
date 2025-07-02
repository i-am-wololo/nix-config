# domains to block

{config, pkgs, ...} : {
	networking.hosts = {
		"0.0.0.0" = [
				"chatgpt.com"
				"gemini.google.com"
				"chat.deepseek.com"
				"copilot.microsoft.com"
				"chat.mistral.ai"
				"chat.qwenlm.ai"
				"lmarena.ai"
		];
	};
}
