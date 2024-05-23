{ config, pkgs, lib, ... }: {
    home.file.skhd = {
        target = ".config/skhd/skhdrc";
        text = ''
        # This configuration files is written to /etc/skhdrc instead of .config/skhd/skhdrc
        # You can reload skhd with the following command: skhd --reload
        # Alternate closing command
        lalt - q: skhd --key "cmd - w"

        # applications
        lalt - t: open -n -a alacritty
        lalt + cmd - e: open -n /Users/sdellsperger/
        lalt - e: alacritty -e ranger .
        lalt - b: /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

        '';
    };
}