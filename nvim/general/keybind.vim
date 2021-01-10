"change esc for jk
inoremap jk <ESC> 
vnoremap jk <ESC> 


"Use ctrl+hjkl to move between split panels
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l



" Toggle NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" FZF keybind
nnoremap <silent> <C-p> :FZF<CR>
