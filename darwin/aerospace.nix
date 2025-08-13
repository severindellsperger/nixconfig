{ config, pkgs, ... }: {
  programs.aerospace = {
    enable = true;
    extraConfig = ''
      # Your AeroSpace TOML configuration goes here
      # For example, to set up keybindings and workspaces:
      # General settings
      start-at-login = true
      enable-normalization-flatten-containers = true
      enable-normalization-opposite-orientation-for-nested-containers = false
      on-focused-monitor-changed = ['move-mouse monitor-lazy-center']

      after-startup-command = [
          # JankyBorders has a built-in detection of already running process,
          # so it won't be run twice on AeroSpace restart
          'exec-and-forget /opt/homebrew/opt/borders/bin/borders active_color=0xffffff00 inactive_color=0xff494d64 width=8.0'
      ]

      # See: https://nikitabobko.github.io/AeroSpace/guide#layouts
      # The 'accordion-padding' specifies the size of accordion padding
      # You can set 0 to disable the padding feature
      # accordion-padding = 30


      [gaps]
      inner.horizontal = 5
      inner.vertical = 5
      outer.left = 5
      outer.bottom = 5
      outer.top = 5
      outer.right = 5

      [mode.main.binding]
      # General settings
      cmd-h = []
      alt-f = 'fullscreen'
      alt-shift-c = 'reload-config'

      # Window settings
      alt-h = 'focus left'
      alt-j = 'focus down'
      alt-k = 'focus up'
      alt-l = 'focus right'

      # See: https://nikitabobko.github.io/AeroSpace/commands#move
      alt-shift-h = 'move left'
      alt-shift-j = 'move down'
      alt-shift-k = 'move up'
      alt-shift-l = 'move right'

      alt-ctrl-h = ['join-with left', 'mode main']
      alt-ctrl-j = ['join-with down', 'mode main']
      alt-ctrl-k = ['join-with up', 'mode main']
      alt-ctrl-l = ['join-with right', 'mode main']

      # Resizing settings
      ctrl-shift-j = 'resize smart -50'
      ctrl-shift-k = 'resize smart +50'

      # Workspaces settings

      alt-1 = 'workspace 1'
      # alt-2 = 'workspace 2'
      # alt-3 = 'workspace 3'
      alt-4 = 'workspace 4'
      # alt-5 = 'workspace 5'
      # alt-6 = 'workspace 6'
      # alt-7 = 'workspace 7'
      alt-8 = 'workspace 8'
      # alt-9 = 'workspace 9'
      # alt-0 = 'workspace 10'

      # alt-1 = 'summon-workspace 1'
      alt-2 = 'summon-workspace 2'
      alt-3 = 'summon-workspace 3'
      # alt-4 = 'summon-workspace 4'
      alt-5 = 'summon-workspace 5'
      alt-6 = 'summon-workspace 6'
      alt-7 = 'summon-workspace 7'
      # alt-8 = 'summon-workspace 8'
      alt-9 = 'summon-workspace 9'
      alt-0 = 'summon-workspace 10'

      alt-shift-1 = 'move-node-to-workspace 1'
      alt-shift-2 = 'move-node-to-workspace 2'
      alt-shift-3 = 'move-node-to-workspace 3'
      alt-shift-4 = 'move-node-to-workspace 4'
      alt-shift-5 = 'move-node-to-workspace 5'
      alt-shift-6 = 'move-node-to-workspace 6'
      alt-shift-7 = 'move-node-to-workspace 7'
      alt-shift-8 = 'move-node-to-workspace 8'
      alt-shift-9 = 'move-node-to-workspace 9'
      alt-shift-0 = 'move-node-to-workspace 10'

      alt-tab = 'workspace-back-and-forth'

      alt-period = 'focus-monitor --wrap-around next'
      alt-comma = 'focus-monitor --wrap-around prev'
      alt-ctrl-period = 'move-workspace-to-monitor --wrap-around next'
      alt-ctrl-comma = 'move-workspace-to-monitor --wrap-around prev'

      alt-r = 'mode resize'




      [workspace-to-monitor-force-assignment]
      # 1 = 1                            # Monitor sequence number from left to right. 1-based indexing
      # 2 = 'main'                       # Main monitor
      # 3 = 'secondary'                  # Non-main monitor in case when there are only two monitors
      # 4 = 'built-in'                   # Case insensitive regex substring
      # 5 = '^built-in retina display$'  # Case insensitive regex match
      # 6 = ['secondary', 'dell']        # You can specify multiple patterns. The first matching pattern will be used
      1 = 1
      #  2 = 1
      #  3 = 1 
      4 = 2
      #  5 = 2 
      #  6 = 2 
      #  7 = 2
      8 = 3
      #  9 = 3 
      #  10 = 3


      [mode.resize.binding]
      h = 'resize width -50'
      j = 'resize height +50'
      k = 'resize height -50'
      l = 'resize width +50'
      enter = 'mode main'
      esc = 'mode main'

      # Float specific apps
      [[on-window-detected]]
      if.app-id = 'com.cisco.secureclient.gui'
      run = 'layout floating'
 
      [[on-window-detected]]
      if.app-id = 'com.1password.1password'
      run = 'layout floating'
    '';
  };
}
