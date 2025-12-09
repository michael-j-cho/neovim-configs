-- For dashboard splash using ASCII art
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- 1. Require the plugin
    local ascii = require("ascii")

    -- 2. Select your art
    -- OPTION A: Get a totally random piece from a specific category
    -- Categories: "animals", "anime", "movies", "gaming", "planets", "text"
    local art = require("ascii").art.text.neovim.sharp

    -- OPTION B: Get one specific piece (if you want the same one every time)
    -- local art = ascii.art.anime.one_piece.luffy

    -- 3. Set it as the dashboard header
    -- Snacks expects a single string with newlines, but ascii returns a table.
    -- We use table.concat to fix that.
    opts.dashboard.preset.header = table.concat(art, "\n")
  end,
}
