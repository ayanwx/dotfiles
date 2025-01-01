{
  programs.fish = {
    enable = true;
    shellAliases = {
      ls = "eza --icons auto";
      tree = "eza --tree --icons auto";
      cat = "bat --theme base16 -pp";
      icat = "kitty icat";
      py = "python";
      fucking = "sudo";
    };
    interactiveShellInit = ''
      fish_add_path $ANDROID_HOME/emulator
      fish_add_path $ANDROID_HOME/platform-tools
    '';
    functions = {
      fish_greeting = {
        body = "clear && neofetch";
      };
    };
  };
}
