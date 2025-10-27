{
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./lang.nix
    ./diagnostic.nix
    ./option.nix
    ./plugin/default.nix
  ];

  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };

    viAlias = true;
    vimAlias = true;

    clipboard = {
      providers.wl-copy.enable = true;
      registers = "unnamedplus";
    };
  };
}
