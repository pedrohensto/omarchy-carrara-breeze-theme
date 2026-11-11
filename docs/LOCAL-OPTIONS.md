# Optional local appearance

These options are not applied by installing the theme. Omarchy regenerates
terminal configuration and Lua from `colors.toml` for repository-installed themes.

## Exact Moonfly and CodeDark in Neovim

For the same editor colorscheme as Carrara, configure your existing Neovim
plugin manager with `bluz71/vim-moonfly-colors`, set
`vim.g.moonflyItalics = false` and `vim.g.moonflyTransparent = true` before
loading `moonfly`, and select `codedark` in lualine.

The ready-to-use companion is [extras/zz-carrara-breeze.lua](../extras/zz-carrara-breeze.lua).
The installation command in the main README copies it into LazyVim's personal
plugin directory. It applies only while this Omarchy theme is selected and
also handles Omarchy's colorscheme reloads. Remove that one file to uninstall
the companion. The theme's normal palette continues to work without it.

For LazyVim, the relevant plugin specification is:

```lua
return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.moonflyItalics = false
      vim.g.moonflyTransparent = true
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "moonfly" } },
  { "nvim-lualine/lualine.nvim", opts = { options = { theme = "codedark" } } },
}
```

This is a personal editor configuration, independent of the published palette.
Omarchy's current theme specification and other local lualine overrides may
take precedence; reconcile those with your configuration. It is not necessary
to copy Carrara's complete editor setup.

## Compact Hyprland geometry

Optional Omarchy 4.5 Lua settings for `~/.config/hypr/looknfeel.lua`:

```lua
hl.config({
  general = { gaps_in = 3, gaps_out = 6, border_size = 1 },
  decoration = { rounding = 2 },
})
```

These values are an Omarchy adaptation, not exported Kröhnkite settings. Keep
your preferred layout and keybindings.
