require "nvchad.autocmds"

-- Treat headers as C++
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.h", "*.hpp" },
  callback = function()
    vim.bo.filetype = "cpp"
  end,
})
