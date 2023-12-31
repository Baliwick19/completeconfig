vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<c-f>', ':NvimTreeFocus<CR>')

--nnoremap <C-f> :NERDTreeFocus<CR>
--nnoremap <C-n> :NERDTree<CR>
--nnoremap <C-t> :NERDTreeToggle<CR>
--nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
