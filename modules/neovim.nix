{ config, pkgs, lib, ... }:

let
  nvimConfig = builtins.fetchGit {
    url = "https://github.com/eigensum/nvim";
    ref = "main";  
  };
in
{
  options.programs.myNeovim.enable = lib.mkEnableOption "Enable eigensum's Neovim setup";

  config = lib.mkIf config.programs.myNeovim.enable {
    programs.neovim.enable = true;

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
        rustup
        java-language-server
        rocmPackages.clang
        marksman
        python313Packages.python-lsp-server
        nil
        ocamlPackages.ocaml-lsp
        zls
        texlab
        zathura 
        lua-language-server

        # Formatters
        google-java-format
        mdformat
        black
        alejandra
        ocamlformat_0_26_2
        tex-fmt
        stylua
      ];

    programs.neovim.extraConfig = ''
      set spell
      set spelllang=de,en
      set spellsuggest=best,9
    '';

    home.file = {
      ".config/nvim".source = nvimConfig;
    };
  };
}

