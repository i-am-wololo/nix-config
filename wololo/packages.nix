{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        equicord
        discord
        keepassxc
        neovide

        # Games
        bottles
        rpcs3
    ];
}
