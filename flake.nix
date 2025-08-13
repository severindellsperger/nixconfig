{
  description = "My Machines";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = inputs@{ nixpkgs, home-manager, darwin, ... }: {
    darwinConfigurations = let username = "sdellsperger";
    in {
      rhea = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        pkgs = import nixpkgs { system = "aarch64-darwin"; };
        modules = [
          ./machines/rhea.nix
          ./darwin/homebrew.nix
          ./darwin/skhd.nix
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              backupFileExtension = "bck";

              useGlobalPkgs = true;
              useUserPackages = true;
              users.sdellsperger.imports = [
                ./home-manager
                ./darwin
              ];
            };
          }
          {
            ids.gids.nixbld = 350;
          }
        ];
      };
    };
  };
}
