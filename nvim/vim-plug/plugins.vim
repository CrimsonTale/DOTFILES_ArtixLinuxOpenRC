" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

Plug 'jiangmiao/auto-pairs'
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Deoplete -Code Completion Engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Emmet – HTML Expansion
Plug 'mattn/emmet-vim'

" Vim Surround – Quoting/Parenthesizing
Plug 'tpope/vim-surround'

" CtrlP – Fuzzy File, Buffer and Tag Finder
Plug 'ctrlpvim/ctrlp.vim'

" Easy motion – Text Navigation
Plug 'easymotion/vim-easymotion'

" Airline – Info Tabline
Plug 'bling/vim-airline'

" Conquer of Completion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERD Commenter
Plug 'preservim/nerdcommenter'

" gitgutter
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Tabs or Spaces?
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
