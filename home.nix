{ config, pkgs, inputs, ... }: {
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

	programs.waybar = {
		enable = true;
	};

	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};
}
