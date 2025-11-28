return {

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- Optional: UI for DAP (recommended)
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      -- You can leave this empty for now or add basic config
      -- DAP will be auto-configured by nvim-dap-go later
    end,
  },

  {
    "leoluz/nvim-dap-go",
    dependencies = "mfussenegger/nvim-dap", -- explicitly declare dep
    ft = "go",
    config = function()
      require("dap-go").setup()
    end,
  },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "fredrikaverpil/neotest-golang",
    },
    opts = {
      adapters = {
        ["neotest-golang"] = {
          dap_go_enabled = true, -- requires leoluz/nvim-dap-go
        },
      },
    },
  },

  {
    "fredrikaverpil/neotest-golang",
  },

  {
    "nvim-mini/mini.icons",
    opts = {
      file = {
        [".go-version"] = { glyph = "", hl = "MiniIconsBlue" },
      },
      filetype = {
        gotmpl = { glyph = "󰟓", hl = "MiniIconsGrey" },
      },
    },
  },
}
