# Carrara Breeze

A dark Omarchy theme inspired by Carrara Software's desktop: charcoal surfaces,
violet accents, a black terminal and Moonfly's terminal/editor palette.

![Carrara Breeze on Omarchy](preview.png)

## Install

Requires Omarchy 4.5 or newer with the Omarchy shell.

```bash
omarchy theme install https://github.com/pedrohensto/omarchy-carrara-breeze-theme
```

Then select **Carrara Breeze** in the theme picker (`Super + Ctrl + T`), or run:

```bash
omarchy theme set "Carrara Breeze"
```

## Appearance

- Charcoal shell surfaces based on KDE Breeze Dark's Plasma 6.6.4 palette.
- A violet accent matched visually to Carrara's stream.
- A pure-black terminal with Moonfly ANSI colors and light grey text.
- Neovim, Helix, btop and other supported apps generated from `colors.toml`.
- Breeze Dark icons, where installed; `breeze-icons` supplies these on Arch.
- An original, understated geometric wallpaper, with its editable SVG source.

The theme uses Omarchy's normal Hyprland desktop. No KDE session, tiling script,
font, editor extension or executable hook is installed.

## Fidelity and local options

This is an adaptation, not Carrara's exported desktop configuration. His current
public Neovim configuration uses **Moonfly** with no italics and a transparent
background, plus **CodeDark** for lualine. The distributed theme uses Omarchy's
generated Aether colorscheme with Moonfly colors; it does not install Moonfly
or reproduce every Moonfly highlight group.

Omarchy strips Lua and terminal configuration overrides when installing a theme
from a repository. Therefore the published theme keeps to `colors.toml`,
`shell.toml`, icons and backgrounds. Optional exact Moonfly/CodeDark and compact
window settings are documented in [Local options](docs/LOCAL-OPTIONS.md).

The preview shows the distributed palette in a real Omarchy session, with
Alacritty and Neovim using the generated Aether colorscheme. Window geometry
and font sizes in the screenshot are local presentation settings.

See [References](docs/REFERENCES.md) for verified sources and the remaining
visual approximations. Tested on Omarchy 4.5.0-3.

## Customize

Edit `colors.toml` for terminal/editor colors and `shell.toml` for shell surfaces,
then reapply the theme. User terminal font and padding preferences remain in
the terminal's own configuration.

## Credits and license

- Carrara Software: visual inspiration and public Neovim configuration.
- KDE Breeze: desktop color references.
- [vim-moonfly-colors](https://github.com/bluz71/vim-moonfly-colors): ANSI and editor palette (MIT).
- Omarchy: shell template and theme generation (MIT).
- Wallpaper and theme integration: Pedro Henrique Santos Moreira.

MIT; see [LICENSE](LICENSE). This project is not affiliated with or endorsed by
Carrara Software, KDE or Omarchy.
