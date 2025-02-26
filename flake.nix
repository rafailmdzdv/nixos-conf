{
	inputs = {
		zen-browser.url = "github:0xc000022070/zen-browser-flake";
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

		home-manager = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, nixpkgs-stable, home-manager, zen-browser, ... } @inputs:
		let
			system = "x86_64-linux";
		in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [ ./configuration.nix ];
			specialArgs = {
				pkgs-stable = import nixpkgs-stable {
					inherit system;
					config.allowUnfree = true;
				};
				inherit inputs;
			};
		};

		homeConfigurations.rafail = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages."${system}";
			modules = [ ./home/home.nix ];
			extraSpecialArgs = {
				inherit inputs;
			};
		};

	};
}
