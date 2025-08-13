{ config, lib, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;

    # The settings below are converted from your Alacritty config.
    settings = {
      # Font settings
      font_face = "JetBrainsMono Nerd Font Mono";
      font_size = 20;

      # Window settings
      padding = 8; # Ghostty uses a single padding value for all sides
      opacity = 0.92;
      window_decorations = false; # Equivalent to "buttonless"
      
      # Colors
      # Ghostty uses a more structured color palette
      theme = "ghostty-theme";

      # Additional configuration for the custom theme
      # This block will be written to a theme file
      ghostty-theme.colors = {
        background = "282c34";
        foreground = "bbc2cf";
        cursor = "bbc2cf";
        bold = "bbc2cf";
      };
    };
  };
}
