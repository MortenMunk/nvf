{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    nvf,
    self,
    ...
  }: {
    packages.x86_64-linux.default =
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./config/default.nix
        ];
      })
      .neovim;

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [
        nvf.nixosModules.default
      ];
    };
  };
}
