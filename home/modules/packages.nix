{ pkgs, flakes, ... }:
{
  home.packages = with pkgs; [
    # Terminal emulators
    alacritty
    kitty

    # Terminal utils
    fzf
    fish
    fastfetch
    yadm
    tmux
    btop
    eza
    cava
    ripgrep
    wl-clipboard-x11

    waybar
    rofi
    swaylock-fancy
    swaynotificationcenter
    swww
    libnotify
    playerctl

    flakes.zen-browser
    telegram-desktop

    nodejs
    python312Full
    rustup
    rustc
  ];
}
