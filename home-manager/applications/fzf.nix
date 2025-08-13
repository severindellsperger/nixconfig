{ pkgs, ... }:

{
  # This section configures the fzf program with Home Manager.
  # The 'enable' option installs fzf and automatically sets up
  # the necessary environment variables and shell functions.
  programs.fzf = {
    enable = true;

    # This is an important option. It enables the fzf keybindings
    # (like Ctrl-T, Ctrl-R) and fuzzy completion for your shell.
    # Replace 'true' with 'false' if you prefer to use a different shell.
    enableZshIntegration = true;


    # You can customize the default command that fzf uses to find files.
    # A common and useful alternative is 'fd' (from the `fd` package)
    # as it is faster and more powerful than the default 'find'.
    defaultCommand = "fd --type f";

    # You can also customize keybindings. This is an example of
    # overriding the default keybinding for a specific action.
    # Here, we use 'alt-c' to switch to a different directory.
    # keybindings = {
    #   "alt-c" = "change-directory";
    # };

    # Custom options can be passed directly to fzf.
    # This is equivalent to setting FZF_DEFAULT_OPTS.
    # This example configures the fzf interface to have a nice border
    # and to display in the middle of the screen.
    # extraOptions = [
    #   "--border"
    #   "--layout=reverse"
    #   "--margin=1"
    # ];
  };
}
