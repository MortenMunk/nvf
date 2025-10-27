{pkgs, ...}: {
  vim = {
    languages = {
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      enableFormat = true;

      python.enable = true;
      haskell.enable = true;
      html.enable = true;
      css.enable = true;
      clang = {
        enable = true;
        cHeader = true;
      };
      nix = {
        enable = true;
        lsp = {
          server = "nixd";
          package = pkgs.nixd;
          # nixos.expr = "(builtins.getFlake (builtins.toString ./.)).nixosConfigurations.${hostname}.options";
          # home_manager.expr = "(builtins.getFlake (builtins.toString ./.)).homeConfigurations.\"${username}@${hostname}\".options";
        };
      };
      rust = {
        enable = true;
        # TODO: Crates? maybe rust_analyzer options?
      };
      ts.enable = true;
      typst.enable = true;
    };

    treesitter = {
      autotagHtml = true;
    };
  };
}
