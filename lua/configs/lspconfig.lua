-- lua/configs/lspconfig.lua

-- Setup capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local function with_caps(opts)
  opts = opts or {}
  opts.capabilities = vim.tbl_deep_extend("force", opts.capabilities or {}, capabilities)
  return opts
end

-- Rust
vim.lsp.config("rust_analyzer", with_caps({
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = true,
    },
  },
}))

-- C/C++
vim.lsp.config("clangd", with_caps({
  cmd = { "clangd", "--header-insertion=never", "--fallback-style=google" },
  filetypes = { "c", "cpp", "objc", "objcpp", "h", "hpp" },
}))

-- HTML
vim.lsp.config("html", with_caps({
  filetypes = { "html", "typescriptreact", "javascriptreact" },
  init_options = { provideFormatter = false },
}))

-- Lua
vim.lsp.config("lua_ls", with_caps({
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false },
    },
  },
}))

-- Enable all
vim.lsp.enable({ "rust_analyzer", "clangd", "html", "lua_ls" })
