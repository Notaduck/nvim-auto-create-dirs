# auto-create-dirs.nvim

**auto-create-dirs.nvim** is a lightweight Neovim plugin that automatically creates parent directories when opening or saving a file. It prevents errors caused by non-existent directories, saving you time and effort.

---

## Features

- Automatically creates missing parent directories when:
  - Opening a file directly from the terminal or directly in neovim with `:e`
  - Saving a file in Neovim using `:w`.
- Works seamlessly with nested directories.
- Zero configuration—just install and use.

---

## Installation

Use [Lazy.nvim](https://github.com/folke/lazy.nvim) to install:

```lua
{
  "notaduck/auto-create-dirs.nvim",
  config = {}
}
