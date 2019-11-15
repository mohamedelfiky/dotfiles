call plug#begin('~/.vim/plugged')

"autoformat code
Plug 'Chiel92/vim-autoformat'
"for editorconfig file
Plug 'editorconfig/editorconfig-vim'
"The fancy start screen for Vim.
Plug 'mhinz/vim-startify'
"===== search ======
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'craigemery/vim-autotag'
"===== Git =========
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "shows a git diff in the gutter
" Plug 'mattn/Gist-vim' "vimscript for creating gists
Plug 'gregsexton/gitv'
" Plug 'tpope/vim-git'
"===== Ruby ========
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-endwise'
Plug 'bruno-/vim-ruby-fold'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'tpope/vim-bundler'
Plug 'sunaku/vim-ruby-minitest'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'slim-template/slim-rails'
Plug 'kana/vim-vspec'
Plug 'thoughtbot/vim-rspec'
Plug 'rhysd/vim-vspec-matchers'
Plug 'rubycomplete.vim'

Plug 'kchmck/vim-coffee-script'
"Multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-markdown'
"improves HTML & CSS workflow
Plug 'mattn/emmet-vim'
"Vim runtime files for Haml, Sass, and SCSS
Plug 'tpope/vim-haml'
"Syntax highlighting for VIM
Plug 'slim-template/vim-slim'

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

"React plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'flowtype/vim-flow'

"Is all about surroundings: parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'
"Vim script for text filtering and alignment
Plug 'godlygeek/tabular'
"Send command from vim to a running tmux session
Plug 'jgdavey/tslime.vim'
"plugin for commenting
Plug 'tpope/vim-commentary'
"Fold markdown documents by section.
" Plug 'nelstrom/vim-markdown-folding'
"extended % matching for HTML, LaTeX, and many other languages
Plug 'matchit.zip'
"plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'
"Create your own text objects
Plug 'kana/vim-textobj-user'
"A light and configurable statusline/tabline for Vim
Plug 'itchyny/lightline.vim'
"A vim plugin that simplifies the transition between multiline and single-line code
Plug 'AndrewRadev/splitjoin.vim'
"A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'
"Plug to move lines and selections up and down
Plug 'matze/vim-move'
"Delete all vim buffers but the current one.
Plug 'BufOnly.vim'
Plug 'vim-auto-save'

" Plug 'scrooloose/syntastic'
" Plug 'szw/vim-ctrlspace'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'mattn/webapi-vim'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimshell.vim'
" Plug 'Shougo/vimproc.vim', {
" \ 'build' : {
" \     'windows' : 'tools\\update-dll-mingw',
" \     'cygwin' : 'make -f make_cygwin.mak',
" \     'mac' : 'make',
" \     'linux' : 'make',
" \     'unix' : 'gmake',
" \    },
" \ }

"====== ColorScheme ======
" Plug 'cseelus/vim-colors-lucid'
" Plug 'wikipedia.vim'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'altercation/vim-colors-solarized'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'habiLight'
" Plug 'zacanger/angr.vim'
" Plug 'guns/jellyx.vim'
" Plug 'gosukiwi/vim-atom-dark'
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'mhartington/oceanic-next'
"======== AutoComplete =======
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"======= elixir =============
" Plug 'elixir-lang/vim-elixir'
" Plug 'avdgaag/vim-phoenix'
"======= golang =============
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"linting and make framework for Neovim/Vim
Plug 'benekastah/neomake'

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

Plug 'ekalinin/dockerfile.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'jeetsukumaran/vim-buffergator'
Plug 'mklabs/split-term.vim'
Plug 'Align'
call plug#end()
