{ config, pkgs, inputs, ... }:
	let
		zen-browser = inputs.zen-browser.packages."${pkgs.system}".default;
	in {

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

		waybar
		rofi
		swaylock-fancy
		dunst
		swww
		libnotify

		zen-browser
		telegram-desktop
	];

	home.pointerCursor = {
		name = "Bibata-Modern-Ice";
		package = pkgs.bibata-cursors;
	};

	home = {
		username = "rafail";
		homeDirectory = "/home/rafail";
		stateVersion = "24.11";
	};

	programs.git = {
		enable = true;
		userName = "rafailmdzdv";
		userEmail = "rafayt323@gmail.com";
	};

	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};
}
