{
  programs.fish = {
    enable = true;
    shellAliases = {
      ls = "eza --icons auto --group-directories-first";
      tree = "eza --tree --icons auto --group-directories-first";
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
