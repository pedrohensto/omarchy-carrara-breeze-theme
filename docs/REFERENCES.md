# Visual references

Checked on 2026-11-11. No configuration from these repositories is executed by
this theme.

## Carrara's current Neovim configuration

[CarraraSoftware/config.nvim](https://github.com/CarraraSoftware/config.nvim/blob/7b37b6636f548bdf4f38801be1e9ab8ba95ae438/init.lua),
commit `7b37b6636f548bdf4f38801be1e9ab8ba95ae438`, updated 2026-11-09:

- `bluz71/vim-moonfly-colors` selected with `colorscheme("moonfly")`.
- `moonflyTransparent = true`.
- `moonflyItalics = false`.
- lualine theme `codedark`.

His older [dotfiles](https://github.com/VitorCarraraMarques/dotfiles), last
updated in August 2025, corroborate the same editor choices. They also contain
a custom grey/green tmux status bar. We have not installed that tmux configuration.

## Desktop

The user supplied Carrara's own live-chat description:

> Distro: EndeavourOS | Kernel: Linux 6.19.13-arch1-1 | DE: KDE Plasma 6.6.4 |
> WM: KWin (Wayland) | TWM: Kröhnkite | Theme: Breeze

[The stream](https://www.youtube.com/watch?v=sZqaGr9NKpE&t=7200s) shows a slim dark
top panel, violet workspace accents, grey text and a black terminal background.

[Breeze Dark, Plasma 6.6.4](https://github.com/KDE/breeze/blob/v6.6.4/colors/BreezeDark.colors)
provides these desktop reference values:

| Surface | RGB | Hex |
| --- | --- | --- |
| Window / complementary background | 32, 35, 38 | `#202326` |
| Button / header / tooltip background | 41, 44, 48 | `#292c30` |
| View background | 20, 22, 24 | `#141618` |
| Foreground | 252, 252, 252 | `#fcfcfc` |
| Default Breeze focus | 61, 174, 233 | `#3daee9` |

Carrara's visible violet accent differs from Breeze's default blue. We have not
found his KDE color-scheme export, panel settings or terminal profile. The
violet `#9b7ac4`, 24 px shell bar, black terminal background and wallpaper are
interpretations of the stream, not claimed as his exact exported settings.
Kröhnkite controls window arrangement; it does not define the Neovim palette.

## Moonfly palette

ANSI colors are drawn from Moonfly's
[Alacritty palette](https://github.com/bluz71/vim-moonfly-colors/blob/755ef16bd99074666e467e2410a3dd2e86874182/extras/moonfly-alacritty.toml)
and [semantic palette](https://github.com/bluz71/vim-moonfly-colors/blob/755ef16bd99074666e467e2410a3dd2e86874182/lua/moonfly/init.lua).
The reference commit is pinned by Carrara's older dotfiles lockfile; his current
config selects the same upstream theme without pinning a version.

The main background is deliberately black rather than Moonfly's `#080808` to
match the visible terminal. ANSI black follows that background, as Omarchy's
generator requires. The desktop violet accent is kept separate from Moonfly's
magenta and purple syntax colors. The terminal's actual Carrara profile remains
unverified; using Moonfly's terminal palette here is a design choice.
