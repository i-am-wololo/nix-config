{lib, ...} :
{
	programs.foot = {
			server.enable =  true;
			enable = true;
			settings = lib.mkOptionDefault {
				main = {
					font = "Hack Nerd Font:size=12";
				};

				colors-dark = {
						alpha = "1";
						background = "161616";
						foreground = "f2f4f8";
						selection-background = "2a2a2a";
						selection-foreground = "f2f4f8";
						urls = "78a9ff"; # Map to Carbonfox blue (regular4)
						search-box-no-match = "484848 f16da6"; # bright0 (gray) and bright1 (pink)
						search-box-match = "8cb6ff 484848"; # bright4 (blue) and bright0 (gray)

						jump-labels = "08bdba 2dc7c4"; # regular3 and bright3 (teal)

						# Normal colors
						regular0 = "282828";
						regular1 = "ee5396";
						regular2 = "25be6a";
						regular3 = "08bdba";
						regular4 = "78a9ff";
						regular5 = "be95ff";
						regular6 = "33b1ff";
						regular7 = "dfdfe0";

						# Bright colors
						bright0 = "484848";
						bright1 = "f16da6";
						bright2 = "46c880";
						bright3 = "2dc7c4";
						bright4 = "8cb6ff";
						bright5 = "c8a5ff";
						bright6 = "52bdff";
						bright7 = "e4e4e5";
				};
		};
	};
}	

