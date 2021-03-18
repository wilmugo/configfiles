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
"function! OpenTerminal()
"   split term://zsh
"   resize 15
"endfunction
"nnoremap <silent><leader>t :call OpenTerminal()<CR>
"Terminal Toggle
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
  if win_gotoid(g:term_win)
    hide
  else
    botright new
    exec "resize " . a:height
    try
      exec "buffer " . g:term_buf
    catch
      call termopen($SHELL, {"detach": 0})
      let g:term_buf = bufnr("")
      set nonumber
      set norelativenumber
      set signcolumn=no
    endtry
    startinsert!
    let g:term_win = win_getid()
  endif
endfunction

nnoremap <silent><leader>t :call TermToggle(12)<CR>
tnoremap <silent><leader>t <C-\><C-n>:call TermToggle(12)<CR>
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
"tnoremap <silent><leader>f <C-\><C-N>:SwitchBuffer<CR>

"split right and below
nmap <silent><leader>s :vsplit<CR>
nmap <silent><leader>d :split<CR>


""fzf keymapings
"map <C-f> :Files<CR>
"map <leader>b :Buffers<CR>
"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>c :Tags<CR>
"nnoremap <leader>m :Marks<CR>
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif
