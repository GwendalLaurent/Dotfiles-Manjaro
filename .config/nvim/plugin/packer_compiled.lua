-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/gwendal/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/gwendal/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/gwendal/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/gwendal/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/gwendal/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n}\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nsigns\1\0\0\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n¿\2\0\0\b\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0005\4\4\0=\4\5\0035\4\v\0005\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5=\5\f\4=\4\r\3=\3\15\2B\0\2\1K\0\1\0\20global_settings\1\0\0\rprojects&$HOME/UCL/Master2/thesis/pmod_uwb\1\0\0\tterm\1\0\0\tcmds\1\0\0\1\2\0\0\r./mcd.sh\23excluded_filetypes\1\2\0\0\fharpoon\1\0\5\16mark_branch\1\27tmux_autoclose_windows\1\21enter_on_sendcmd\1\19save_on_change\2\19save_on_toggle\1\nsetup\fharpoon\frequire\0" },
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n©\2\0\0\a\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\r\0005\5\v\0005\6\n\0=\6\f\5=\5\b\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\twork\1\0\2\twork\17~/Notes/work\nperso\18~/Notes/perso\20core.completion\vconfig\1\0\0\1\0\1\vengine\rnvim-cmp\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  vimtex = {
    loaded = true,
    path = "/Users/gwendal/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n©\2\0\0\a\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\r\0005\5\v\0005\6\n\0=\6\f\5=\5\b\4=\4\14\3=\3\16\2B\0\2\1K\0\1\0\tload\1\0\0\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\twork\1\0\2\twork\17~/Notes/work\nperso\18~/Notes/perso\20core.completion\vconfig\1\0\0\1\0\1\vengine\rnvim-cmp\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n}\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nsigns\1\0\0\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n¿\2\0\0\b\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\3\0005\4\4\0=\4\5\0035\4\v\0005\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5=\5\f\4=\4\r\3=\3\15\2B\0\2\1K\0\1\0\20global_settings\1\0\0\rprojects&$HOME/UCL/Master2/thesis/pmod_uwb\1\0\0\tterm\1\0\0\tcmds\1\0\0\1\2\0\0\r./mcd.sh\23excluded_filetypes\1\2\0\0\fharpoon\1\0\5\16mark_branch\1\27tmux_autoclose_windows\1\21enter_on_sendcmd\1\19save_on_change\2\19save_on_toggle\1\nsetup\fharpoon\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
