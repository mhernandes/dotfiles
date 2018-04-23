set clipboard=unnamed

function! ClipboardYank()
  call system('pbcopy', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('pbpaste')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

set tabstop=2
set softtabstop=0
set shiftwidth=2

set number
set numberwidth=5
set smartindent

set virtualedit=all

nnoremap ; :

let mapleader=" "

nmap <leader>so :so ~/.vimrc<cr> 
nmap <leader>rr :edit ~/.onhernandes/dotfiles/vimrc<cr>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()

noremap <Up> ""
 noremap! <Up> <Esc>
 noremap <Down> ""
 noremap! <Down> <Esc>
 noremap <Left> ""
 noremap! <Left> <Esc>
 noremap <Right> ""             