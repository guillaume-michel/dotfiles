-- return {
--   "RRethy/base16-nvim",
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     vim.cmd("colorscheme base16-brewer")
--   end,
-- }

-- return {
--   "marko-cerovac/material.nvim",
--   priority = 1000,
--   config = function()
--     vim.g.material_style = "darker"
--     -- vim.g.material_style = "deep ocean"
--     vim.cmd("colorscheme material")
--   end,
-- }
--
return {
  "rafamadriz/neon",
  priority = 1000,
  config = function()
    vim.g.neon_style = "Dark"
    vim.cmd("colorscheme neon")
  end,
}
