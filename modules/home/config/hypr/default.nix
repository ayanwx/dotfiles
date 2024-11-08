{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      "$menu" = "rofi -show drun";
      "$cycle_windows" = "hyprctl dispatch cyclenext";
      "$prev_workspace" = "hyprctl dispatch workspace previous";
      "$take-ss-area" = "grim -g \"$(slurp -w 0)\" - | swappy -f -";
      "$take-ss-full" = "grim | wl-copy";
      "exec-once" = [
        "[workspace 3 silent] vesktop"
        "[workspace 3 silent] spotify"
        "[workspace 5 silent] qbittorrent"
        "~/.ext-apps/spotblock-rs/target/debug/spotblock-rs"
        "eww open leftbar -c ~/.config/eww/windows/leftbar --restart"
        "/usr/bin/env sh ~/dotfiles/scripts/startup.sh"
      ];
      workspace = [
        "workspace = 1, persistent:true,monitor=0,default"
        "workspace = 2, persistent:true,monitor=0"
        "workspace = 3, persistent:true,monitor=0"
        "workspace = 4, persistent:true,monitor=0"
        "workspace = 5, persistent:true,monitor=0"
      ];
      monitor = ",preferred,auto,auto";
      general = {
        gaps_in = 2.5;
        gaps_out = 5;
        border_size = 1;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        resize_on_border = "false";
        allow_tearing = "false";
        layout = "dwindle";
      };
      decoration = {
        rounding = 0;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
      };
      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 1, myBezier"
          "windowsOut, 1, 1, default, popin 80%"
          "fade, 1, 7, default"
          "workspaces, 1, 1, default"
        ];
      };
      dwindle = {
        pseudotile = true;
        preserve_split = true;
        force_split = 2;
      };
      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };

      bind = [
        "$mod, RETURN, exec, $terminal"
        "$mod, Q, killactive,"
        "$mod, S, togglefloating,"
        "$mod, SPACE, exec, $menu"
        "$mod, C, exec, $cycle_windows"
        "$mod, TAB, exec, $prev_workspace"
        "$mod, T, pseudo,"
        "$mod, J, togglesplit,"
        "$mod SHIFT, S, exec, $take-ss-area"

        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"

        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ];
      bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];
    };
    extraConfig = "
      env = XCURSOR_SIZE,24
      env = HYPRCURSOR_SIZE,20
    ";
  };
}
