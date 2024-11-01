return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
  config = function()
    local checkboxPresets = require("markview.presets").checkboxes
    local headingPresets = require("markview.presets").headings

    require("markview").setup({
      checkboxes = checkboxPresets.nerd,
      headings = headingPresets.marker,
      hybrid_modes = { "i" },
      modes = { "n", "no", "c", "i"}
    })
  end
}
