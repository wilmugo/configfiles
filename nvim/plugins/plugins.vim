call plug#begin("$HOME/.vim/plugged")
  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-python']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'othree/yajs.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'machakann/vim-highlightedyank'
  Plug 'Yohannfra/Nvim-Switch-Buffer'
  Plug 'tpope/vim-fugitive'
  Plug 'jmcantrell/vim-virtualenv'
  Plug 'mattn/emmet-vim'


  " File Explorer with Icons
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  "airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "theme
  Plug 'joshdick/onedark.vim'
call plug#end()
