-- return {
--   "rose-pine/neovim",
--   lazy = false,
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       variant = "auto", -- auto, main, moon, or dawn
--       dark_variant = "main", -- main, moon, or dawn
--       dim_inactive_windows = false,
--       extend_background_behind_borders = true,
--
--       enable = {
--         terminal = true,
--         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--         migrations = true, -- Handle deprecated options automatically
--       },
--
--       styles = {
--         bold = true,
--         italic = true,
--         transparency = true,
--       },
--
--       groups = {
--         border = "muted",
--         link = "iris",
--         panel = "surface",
--
--         error = "love",
--         hint = "iris",
--         info = "foam",
--         note = "pine",
--         todo = "rose",
--         warn = "gold",
--
--         git_add = "foam",
--         git_change = "rose",
--         git_delete = "love",
--         git_dirty = "rose",
--         git_ignore = "muted",
--         git_merge = "iris",
--         git_rename = "pine",
--         git_stage = "iris",
--         git_text = "rose",
--         git_untracked = "subtle",
--
--         h1 = "iris",
--         h2 = "foam",
--         h3 = "rose",
--         h4 = "gold",
--         h5 = "pine",
--         h6 = "foam",
--       },
--
--       pallete = {
--         -- Override the builtin palette per variant
--         moon = {
--           base = "#18191a",
--           overlay = "#363738",
--         },
--       },
--
--       highlight_groups = {
--         Comment = { fg = "#AFAFAF", bg = "NONE", italic = true },
--         -- VertSplit = { fg = "muted", bg = "muted" },
--       },
--
--       before_highlight = function(group, highlight, palette)
--         -- Disable all undercurls
--         -- if highlight.undercurl then
--         --     highlight.undercurl = false
--         -- end
--         --
--         -- Change palette colour
--         -- if highlight.fg == palette.pine then
--         --     highlight.fg = palette.foam
--         -- end
--       end,
--     })
--
--     vim.cmd("colorscheme rose-pine-moon")
--   end,
--   -- vim.cmd("colorscheme rose-pine")
--   -- vim.cmd("colorscheme rose-pine-main")
--   -- vim.cmd("colorscheme rose-pine-dawn")
-- }
--
-- return {
--   "catppuccin/nvim", -- https://github.com/catppuccin/nvim
--   name = "catppuccin",
--   priority = 1000,
--   lazy = false,
--   config = function()
--     require("catppuccin").setup({
--       transparent_background = true, -- disables setting the background color.
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       color_overrides = {
--         all = {
--           text = "#AFAFAF",
--         },
--       },
--       custom_highlights = {},
--       default_integrations = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     })
--     vim.cmd("colorscheme catppuccin")
--   end,
-- }
--
return {
  "scottmckendry/cyberdream.nvim", -- https://github.com/scottmckendry/cyberdream.nvim
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      -- Enable transparent background
      transparent = true,

      -- Modern borderless telescope theme
      borderless_telescope = false,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      theme = {
        -- variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
        highlights = {
          -- Highlight groups to override, adding new groups is also possible
          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

          -- Example:
          Comment = { fg = "#AFAFAF", bg = "NONE", italic = true },

          -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a highlight group entirely using the color palette
        -- overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
        --     -- Example:
        --     return {
        --         Comment = { fg = colors.green, bg = "NONE", italic = true },
        --         ["@property"] = { fg = colors.magenta, bold = true },
        --     }
        -- end,

        -- Override a color entirely
        colors = {
          -- For a list of colors see `https://github.com/scottmckendry/cyberdream.nvim/blob/main/lua/cyberdream/colors.lua`
          bg = "#16181A",
          bgAlt = "#4B4B4B",
          bgHighlight = "#9F9F9F",
          fg = "#ffffff",
          lightGrey = "#bbd3ff",
          grey = "#7b8496",
          blue = "#57C7FF",
          green = "#38ff9C",
          cyan = "#9AEDFE",
          red = "#FF5C57",
          yellow = "#F3F99D",
          magenta = "#FF6AC1",
          pink = "#FF5EA0",
          orange = "#FFBD5E",
          purple = "#BD5EFF",
        },
      },
    })

    vim.cmd("colorscheme cyberdream")
  end,
}
