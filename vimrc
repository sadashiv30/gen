" vundle {{{1
" want this anyways)
set nocompatible

" vundle needs filtype plugins off
" " i turn it on later
filetype off
filetype plugin indent off
syntax off
 "
 " " set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim
 "
 " start vundle environment
call vundle#begin()
"
 " " list of plugins {{{2
 " " let Vundle manage Vundle (this is required)
Plugin 'gmarik/Vundle.vim'
 "
 " " to install a plugin add it here and run :PluginInstall.
 " " to update the plugins run :PluginInstall! or :PluginUpdate
 " " to delete a plugin remove it here and run :PluginClean
 " " 
 "
 " " YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
 " Plugin 'bling/vim-airline'
 "
Plugin 'Rip-Rip/clang_complete'
Plugin 'vim-scripts/CRefVim'
Plugin 'sjl/gundo.vim'
Plugin 'jondkinney/dragvisuals.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'flazz/vim-colorschemes'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
   
 " " add plugins before this
call vundle#end()
 "
 " " now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on
