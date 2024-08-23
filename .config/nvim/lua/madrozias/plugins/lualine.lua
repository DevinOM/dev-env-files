return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    -- local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      -- vi modes
      normal = "#04a1ec",
      insert = "#3EFFDC",
      visual = "#FF61EF",
      command = "#FFDA7B",
      replace = "#FF4A4A",
      -- text colors
      black_text = "#181818",
      gray_text = "#585858",
      comment_gray = "#AFAFAF",
      -- bg/fg colors
      lightest_gray = "#8A8A8A",
      light_gray = "#575757",
      dark_gray = "#262626",
      black_bar = "#121212",
      transparent = nil,
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.normal, fg = colors.black_text },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        d = { bg = colors.transparent, fg = colors.comment_gray },
        e = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
      insert = {
        a = { bg = colors.insert, fg = colors.black_text },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
      visual = {
        a = { bg = colors.visual, fg = colors.black_text },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
      command = {
        a = { bg = colors.command, fg = colors.black_text },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
      replace = {
        a = { bg = colors.replace, fg = colors.black_text },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
      inactive = {
        a = { bg = colors.red, fg = colors.red },
        b = { bg = colors.dark_gray, fg = colors.comment_gray },
        c = { bg = colors.transparent, fg = colors.comment_gray },
        x = { bg = colors.dark_gray, fg = colors.comment_gray },
        y = { bg = colors.light_gray, fg = colors.black_text },
        z = { bg = colors.lightest_gray, fg = colors.black_text },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
        disabled_filetypes = { "NvimTree" },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = { "diff" },
          lualine_d = { "diagnostics" },
          lualine_e = { "filename" },
          lualine_x = { "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        -- inactive_sections = {
        --   lualine_a = {},
        --   lualine_b = {},
        --   lualine_c = { "filename" },
        --   lualine_x = { "location", "encoding", "fileformat" },
        --   lualine_y = {},
        --   lualine_z = {},
        -- },
      },
    })
  end,
}
