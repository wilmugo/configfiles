"change esc for jk
inoremap jk <ESC> 
vnoremap jk <ESC> 


"Use ctrl+hjkl to move between split panels
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l


" Switch buffers 
nnoremap <silent><leader>f :SwitchBuffer<CR>

" Toggle NERDTree
nnoremap <silent><C-n> :NERDTreeToggle<CR>

" FZF keybind
nnoremap <silent><C-p> :FZF<CR>

" Ctrl+s save file
nmap <C-s> :w<CR>
vmap <C-s> <ESC>:w<CR>
imap <C-s> <ESC>:w<CR>

" clear search ESC
nnoremap <silent><ESC> :noh<CR><ESC>

" open terminal on ,+t
" uses zsh instead of bash
" function OpenTerminal()
"   split term://zsh
"   resize 10
" endfunction
nnoremap <silent><leader>t :term<CR>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
tnoremap <silent><leader>f <C-\><C-N>:SwitchBuffer<CR>

"split right and below
nmap <silent><leader>s :vsplit<CR>
nmap <silent><leader>d :split<CR>
