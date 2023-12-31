vim.g.mapleader = ' '
vim.g.maploacalleader = ' '

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.cmd[[ 
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
]]

-- inoremap { {}<Esc>ha
