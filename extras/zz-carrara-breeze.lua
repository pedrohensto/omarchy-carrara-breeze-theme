-- Exact editor appearance from CarraraSoftware/config.nvim.
-- Opt-in companion to the Omarchy theme; other themes retain their settings.
local function active()
  local path = vim.fn.expand("~/.local/state/omarchy/current/theme.name")
  local file = io.open(path, "r")
  if not file then
    return false
  end
  local name = file:read("*l")
  file:close()
  return name == "carrara-breeze"
end

return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.moonflyItalics = false
      vim.g.moonflyTransparent = true
      local group = vim.api.nvim_create_augroup("CarraraBreezeAppearance", { clear = true })
      local function statusline_background()
        if not active() then
          return
        end
        -- Components such as Trouble reset to StatusLine between symbols.
        -- Keep those spaces on CodeDark's surface even when a local
        -- transparency hook clears the default statusline background.
        local middle = vim.api.nvim_get_hl(0, { name = "lualine_c_normal", link = false })
        for _, name in ipairs({ "StatusLine", "StatusLineNC" }) do
          local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
          hl.bg = middle.bg or 0x262626
          vim.api.nvim_set_hl(0, name, hl)
        end
      end
      local function refresh_statusline()
        -- Omarchy reapplies transparency shortly after colorscheme reloads.
        vim.defer_fn(statusline_background, 30)
      end
      vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
        group = group,
        callback = refresh_statusline,
      })
      vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = { "VeryLazy", "LazyReload" },
        callback = refresh_statusline,
      })
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        callback = function(event)
          if active() and event.match ~= "moonfly" then
            vim.schedule(function()
              if active() and vim.g.colors_name ~= "moonfly" then
                vim.cmd.colorscheme("moonfly")
              end
            end)
          end
        end,
      })
      refresh_statusline()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      if active() then
        opts.colorscheme = "moonfly"
      end
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      local previous = opts.options.theme or "auto"
      opts.options.theme = function()
        local loader = require("lualine.utils.loader")
        if active() then
          return loader.load_theme("codedark")
        end
        return type(previous) == "function" and previous()
          or type(previous) == "table" and previous
          or loader.load_theme(previous)
      end
    end,
  },
}
