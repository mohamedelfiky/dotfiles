let mapleader = " "

syntax on " enable syntax highlighting

set shell=zsh

"================================
" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:deoplete#omni_patterns = {}
call deoplete#custom#option('omni_patterns', {
\ 'complete_method': 'omnifunc',
\ 'terraform': '[^ *\t"{=$]\w*',
\})

"================================
" neomake
"================================
autocmd! BufWritePost,BufEnter * Neomake
"================================

" open vimfiler by default
let g:vimfiler_as_default_explorer = 1

let g:pymode_rope_lookup_project = 0
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html'] " Specific configurations
let g:move_key_modifier = 'C'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_use_password_in_gitconfig = 1
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
"========================================
" General
"========================================
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set gdefault
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set smartindent
set relativenumber
set ruler             			 " show the cursor position all the time
set backspace=indent,eol,start   " enable <BS> for everything
set colorcolumn=80               " visual indicator of column
set number                       " Show line numbers
set hidden                       " hide when switching buffers, don't unload
set laststatus=2                 " always show status line
set lazyredraw                   " don't update screen when executing macros
set mouse=a                      " enable mouse in all modes
set nowrap                       " disable word wrap
set showbreak="+++ "             " String to show with wrap lines
set showcmd                      " show command on last line of screen
set showmatch                    " show bracket matches
set textwidth=0                  " don't break lines after some maximum width
set ttyfast                      " increase chars sent to screen for redrawing
set title                        " use filename in window title
set wildmenu                     " enhanced cmd line completion
set wildchar=<TAB>               " key for line completion
set noerrorbells                 " no error sound
set splitright                   " Split new buffer at right
set ts=2 sts=2 sw=2 expandtab
"========================================

"========================================
" Appearance
"========================================
set t_Co=256
set winheight=999
set winheight=5
set winminheight=5
set winwidth=84
syntax enable
set background=dark
colorscheme Tomorrow-Night
let g:airline_theme='Tomorrow-Night'
"========================================

"========================================
" Folding
"========================================
set foldlevel=99
set foldignore=           " don't ignore anything when folding
set foldlevelstart=99     " no folds closed on open
set foldmethod=marker     " collapse code using markers
set foldnestmax=1         " limit max folds for indent and syntax methods
"========================================

"========================================
" Searches
"========================================
set hlsearch            " highlight search results
set incsearch           " search whilst typing
set ignorecase          " case insensitive searching
set smartcase           " override ignorecase if upper case typed
set more                " Stop in list
"========================================

" auto save
let g:auto_save = 0
let g:auto_save_in_insert_mode = 0

"========================================
" StatusLine
"========================================
set statusline=%1*[%{GetName()}]\
set statusline+=%<pwd:%{getcwd()}\
set statusline+=%2*%{&modified?'\[+]':''}%*
set statusline+=%{IsHelp()}
set statusline+=%{&readonly?'\ (ro)\ ':''}
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}\|
set statusline+=%{&ff}\|
set statusline+=%{strlen(&ft)?&ft:'<none>'}
set statusline+=]\
set statusline+=%=
set statusline+=c%c
set statusline+=,l%l
set statusline+=/%L\
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
hi User1 ctermbg=white    ctermfg=black   guibg=#89A1A1 guifg=#002B36
hi User2 ctermbg=red      ctermfg=white   guibg=#aa0000 guifg=#89a1a1
"========================================

"========================================
" Autocommands
"========================================
autocmd BufWritePre *.rb :%s/\s\+$//e " auto remove trailing whitespace in ruby files
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile [vV]agrantfile set filetype=ruby
au Bufread,BufNewFile *.md set filetype=markdown textwidth=79
au Bufread,BufNewFile *.markdown set textwidth=79
au Bufread,BufNewFile *.feature set filetype=cucumber " .feature files are Cucumber.
"========================================

"========================================
" BACKUP / TMP FILES
"========================================
if isdirectory($HOME . '/.vim/backup') == 0
	:silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup
if isdirectory($HOME . '/.vim/swap') == 0
	:silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.
"========================================

"========================================
" Make sure Vim returns to the same line when you reopen a file.
"========================================
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
	augroup END
"========================================


let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" fzf
nnoremap <silent><C-p> :Files<cr>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:ackprg = 'ag --nobreak --nonumbers --noheading . | fzf'

let g:vim_tags_auto_generate = 1

"Split-term
let g:split_term_vertical = 1

"React Settings
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:ale_fix_on_save = 1
let b:ale_linters = ['eslint']
let g:javascript_plugin_jsdoc = 1

" eslint ale enhancements
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" Terraform config
let g:terraform_align=1
let g:terraform_fmt_on_save=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

" test
let g:rspec_command = "bundle exec rspec {spec}"

