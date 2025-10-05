# Neovim Configuration README

## Overview

The configuration is organized into modular plugins that handle different aspects of the editor experience.

## Configuration Structure

The configuration is structured with:

- **Core settings** in `vim.opt` for basic editor behavior
- **Modular plugins** organized in separate files (e.g., `plugins/treesitter.lua`, `plugins/telescope.lua`) which can be found under `lua/plugins`.

LSPs and formatters should be set in the respective files under `configs`. The keybindings are set in the configuration of `whichkey.nvim`.

## Plugin Table

| Plugin Name | Description | Notes |
|--------------------|--------------------------------------------------|-------|
| **treesitter** | Syntax highlighting and parsing | |
| **telescope** | Fuzzy finder for files, buffers, etc. | search for TODOs with <space>ft |
| **lualine** | Status line plugin | |
| **autopairs** | Auto-pairing of parentheses and brackets | |
| **catppuccin** | Color scheme plugin | |
| **alpha** | Neovim welcome screen | |
| **tree** | File tree explorer | |
| **conform** | format code | formats on save |
| **lazygit** | Git integration for Neovim | |
| **mason** | Package manager for LSPs, DAPs, linters, and formatters | |
| **lspconfigmason** | Integrates mason with lspconfig | set the desired LSPs in `configs/lsps.lua`|
| **lspconfignvim** | LSP configuration plugin | |
| **cmp** | Completion engine for LSP and other sources | |
| **navbuddy** | Navigation plugin for buffers | |
| **whichkey** | Show key mappings | all shortcuts should be set in `whichkey.nvim`|
| **gen** | Generate code snippets | uses ollama, the Modelfiles can be found under models|
| **trouble** | LSP diagnostics and messages | |
| **todo** | Todo highlighting plugin | |
| **urlopen** | Open URLs in the default browser | |
| **barbar** | Buffer line plugin | |
| **rendermarkdown** | Render markdown files in a buffer | is on by default|
| **masontoolinstaller** | Tool installer for Mason | installs the formatters in `configs/formatters.lua`, if a formatter does not exist it will fail to install the others|
