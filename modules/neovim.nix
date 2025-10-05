{
  config,
  pkgs,
  lib,
  eigen-neovim,
  ...
}: {
  options.programs.myNeovim.enable = lib.mkEnableOption "Enable eigensum's Neovim setup";

  config = lib.mkIf config.programs.myNeovim.enable {
    programs.neovim = {
      enable = true;

      plugins = with pkgs.vimPlugins; [
        nvim-treesitter
        telescope-nvim
        lualine-nvim
        nvim-autopairs
        catppuccin-nvim
        alpha-nvim
        nvim-tree-lua
        conform-nvim
        lazygit-nvim
        nvim-lspconfig
        nvim-cmp
        nvim-navbuddy
        which-key-nvim
        gen-nvim
        trouble-nvim
        todo-comments-nvim
        url-open
        barbar-nvim
        render-markdown-nvim
        nvim-web-devicons
      ];

      extraPackages = with pkgs;
        [
          ripgrep
          lazygit
          ollama
          lua
          zig
          python313
          ocaml
          opam

          # LSPs
          rustup
          java-language-server
          marksman
          python313Packages.python-lsp-server
          nil
          ocamlPackages.ocaml-lsp
          zls
          texlab
          lua-language-server

          # Formatters
          google-java-format
          mdformat
          black
          alejandra
          ocamlformat_0_26_2
          tex-fmt
          stylua
        ]
        ++ lib.optionals pkgs.stdenv.isLinux [
          zathura
          rocmPackages.clang
        ];

      extraConfig = ''
        set spell
        set spelllang=de,en
        set spellsuggest=best,9
      '';
    };

    home.file = {
      ".config/nvim".source = eigen-neovim + "/config";
    };
  };
}
