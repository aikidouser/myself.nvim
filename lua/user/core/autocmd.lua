vim.cmd("autocmd BufEnter * silent! lcd %:p:h")
vim.cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
