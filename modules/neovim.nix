{
  config,
  pkgs,
  lib,
  ...
}: let
  nvimConfig = pkgs.fetchgit {
    url = "https://github.com/eigensum/nvim";
    rev = "";
    sha256 = "";
  };
in {
  options.programs.myNeovim.enable = lib.mkEnableOption "Enable eigensum's Neovim setup";

  config = lib.mkIf config.programs.myNeovim.enable {
    programs.neovim = {
      enable = true;
      extraPackages = with pkgs; [
        ripgrep
        lazygit
        ollama
        lua
        zig
        python313
        ocaml
        opam

        # LSPs
        rustup # Rust
        java-language-server # Java
        rocmPackages.clang # C/C++
        marksman # Markdown
        python313Packages.python-lsp-server # Python
        nil # Nix
        ocamlPackages.ocaml-lsp # OCaml
        zls # Zig
        texlab # LaTeX
        zathura 
        lua-language-server # Lua

        # Formatters
        # rustfmt included in rustup
        google-java-format # Java
        # clang-format included in rocm.Packages.clang
        mdformat # Markdown
        black # Python
        alejandra # Nix
        ocamlformat_0_26_2 # OCaml
        tex-fmt # Latex
        stylua # Lua
      ];
    };

    extraConfig = ''
    set spell 
    set spelllang=de,en
    set spellsuggest=best,9
    ''

home.file = {
  ".config/nvim".source = nvimConfig;
};

  };
}
