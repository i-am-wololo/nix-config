{config, pkgs, ...} : {
    home.packages = with pkgs; [
        youtube-music
        discord
        equicord
        keepassxc
        neovide

        # Games
        bottles
        rpcs3
    ];
}
