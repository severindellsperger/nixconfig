{ config, pkgs, lib, ... }: {
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = { };
    casks = [
      "1password"
      "1password-cli"
      "aerospace"
      "discord"
      "firefox"
      "flameshot"
      "font-jetbrains-mono-nerd-font"
      "ghostty"
      "google-chrome"
      "karabiner-elements"
      "raycast"
      "slack"
      "visual-studio-code"
      "wireshark"
      "webex"
    ];
    taps = [
      "koekeishiya/formulae" # yabai, skhd
      "jklaiber/homebrew-tap"
    ];
    brews = [
      "koekeishiya/formulae/skhd"
      "jklaiber/homebrew-tap/jumper"
      "git-lfs"
      "ripgrep"
      "tio"
      "uv"
      "yazi"
    ];
  };
}
