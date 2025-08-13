{ config, lib, pkgs, ... }:

{
  programs.ghostty = {
    enable = false;

    settings = {
      # Font settings
      font_face = "JetBrainsMono Nerd Font Mono";
      font_size = 20;

      # Window settings
      padding = 8;
      opacity = 0.92;
      window_decorations = false;
    };
  };
}
