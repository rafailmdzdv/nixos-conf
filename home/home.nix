{ pkgs, ... }:
{
  imports = [
    ./modules
  ];

  home.enableNixpkgsReleaseCheck = false;

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
  };

  home = {
    username = "rafail";
    homeDirectory = "/home/rafail";
    stateVersion = "24.11";
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
