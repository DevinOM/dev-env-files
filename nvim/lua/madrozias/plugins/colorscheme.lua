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
