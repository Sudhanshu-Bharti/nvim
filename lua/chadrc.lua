
-- existing configuration

local M = {}

M.base46 = {
   theme = "oxocarbon",
}

-- Add your keymap here
M.mappings = {
   -- assuming you're using normal mode, bind <leader>m to open the menu
   n = {
     vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'
        local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default" -- define your menu options here
         local opts = { mouse = true, border = false }    -- additional options if any
         require("menu").open(options, { mouse = true })
      end , {})
   },
}

return M

