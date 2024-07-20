
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" vim-bootstrap

"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
"let vimplug_exists=expand('~/.local/share/nvim/site/autoload/plug.vim')
"
"let g:vim_bootstrap_langs = "python"
"let g:vim_bootstrap_editor = "vim"				" nvim or vim
"
"if !filereadable(vimplug_exists)
"  if !executable("curl")
"    echoerr "You have to install curl or first install vim-plug yourself!"
"    execute "q!"
"  endif
"  echo "Installing Vim-Plug..."
"  echo ""
"  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
"  let g:not_finish_vimplug = "yes"
"
"  autocmd VimEnter * PlugInstall
"endif


" Required:
call plug#begin(expand('~/.vim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" -----------------------------------------------------------------------------
" Color settings
" -----------------------------------------------------------------------------
set background=dark
"let g:solarized_termcolors=256
" This needs to come last, otherwise the colors aren't correct.
"syntax on



set clipboard=unnamedplus "requires +clipboard

