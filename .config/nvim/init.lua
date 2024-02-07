require("michel")
require("michel.plugins")
require'lspconfig'.pyright.setup{}


-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'erlangls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

-- Make erlangls find the first config file possible (avoid starting the server in the current folder (might create issue if no erlang_ls.config file)
lspconfig.erlangls.setup({
    root_dir = lspconfig.util.root_pattern("erlang_ls.*"), -- Allows .config and yaml files
    capabilities = capabilities
})

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
vim.keymap.set("n", "<C-&>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-é>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-\">", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-\'>", function() ui.nav_file(4) end)
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- Setup elixir LSP
lspconfig.elixirls.setup{
    cmd = {"/home/michel.elixir-ls/language_server.sh"}
} 
