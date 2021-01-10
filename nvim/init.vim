source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keybind.vim
source $HOME/.config/nvim/plugins/plug-settings.vim



" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <C-;> :call OpenTerminal()<CR>

source $HOME/.config/nvim/themes/onedark.vim
