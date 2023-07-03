vim.api.nvim_create_autocmd(
'BufWritePre', {
  pattern = '',
  command = 'lua vim.lsp.buf.format()'
})

vim.api.nvim_create_autocmd(
'BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

-- https://www.reddit.com/r/neovim/comments/zy5s0l/you_dont_need_vimrooter_usually_or_how_to_set_up/?utm_source=share&utm_medium=ios_app&utm_name=ioscss&utm_content=2&utm_term=1 Array of file names indicating root directory. Modify to your liking.
local root_names = { '.git', 'Makefile', 'README.md' }

-- Cache to use for speed up (at cost of possibly outdated results)
local root_cache = {}

local set_root = function()
  -- Get directory path to start search from
  local path = vim.api.nvim_buf_get_name(0)
  if path == '' then return end
  path = vim.fs.dirname(path)

  -- Try cache and resort to searching upward for root directory
  local root = root_cache[path]
  if root == nil then
    local root_file = vim.fs.find(root_names, { path = path, upward = true })[1]
    if root_file == nil then return end
    root = vim.fs.dirname(root_file)
    root_cache[path] = root
  end

  -- Set current directory
  vim.fn.chdir(root)
end

local root_augroup = vim.api.nvim_create_augroup('MyAutoRoot', {})
vim.api.nvim_create_autocmd('BufEnter', { group = root_augroup, callback = set_root })
