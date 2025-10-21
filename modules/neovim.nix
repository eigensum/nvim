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
        obsidian-nvim
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
        gitsigns-nvim
        nvim-cmp
        cmp-nvim-lsp
        cmp-buffer
        cmp-path
        cmp-cmdline
        luasnip
        cmp_luasnip
        plenary-nvim
        nvim-navic
        nui-nvim
        # Parsers
        nvim-treesitter-parsers.lua
        nvim-treesitter-parsers.zig
        nvim-treesitter-parsers.yaml
        nvim-treesitter-parsers.vim
        nvim-treesitter-parsers.vimdoc
        nvim-treesitter-parsers.toml
        nvim-treesitter-parsers.rust
        nvim-treesitter-parsers.python
        nvim-treesitter-parsers.ocaml
        nvim-treesitter-parsers.nix
        nvim-treesitter-parsers.matlab
        nvim-treesitter-parsers.markdown
        nvim-treesitter-parsers.make
        nvim-treesitter-parsers.latex
        nvim-treesitter-parsers.json
        nvim-treesitter-parsers.java
        nvim-treesitter-parsers.hyprlang
        nvim-treesitter-parsers.haskell
        nvim-treesitter-parsers.gitignore
        nvim-treesitter-parsers.gitcommit
        nvim-treesitter-parsers.gitattributes
        nvim-treesitter-parsers.cpp
        nvim-treesitter-parsers.cmake
        nvim-treesitter-parsers.c
        nvim-treesitter-parsers.bibtex
        nvim-treesitter-parsers.bash
        nvim-treesitter-parsers.asm
        nvim-treesitter-parsers.matlab
      ];

      extraPackages = with pkgs; [
        ripgrep
        lazygit
        lua
        zig
        python313
        ocaml
        opam
        tree-sitter
        nodejs_24
        jdk25
        zathura
        rocmPackages.clang

        # LSPs
        rustup
        marksman
        python313Packages.python-lsp-server
        nil
        ocamlPackages.ocaml-lsp
        zls
        texlab
        lua-language-server
        jdt-language-server

        # Formatters
        google-java-format
        black
        alejandra
        ocamlformat_0_26_2
        tex-fmt
        stylua
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
