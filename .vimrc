execute pathogen#infect()
call pathogen#helptags()

"""""""YouCompleteMe""""""""
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py' "default ycm conf location
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_confirm_extra_conf = 0 "no annoying tips on vim starting
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_filetype_blacklist = {'tex' : 1, 'markdown' : 1, 'text' : 1, 'html' : 1}
let g:syntastic_ignore_files = [".*\.py$"] "python has its own check engine
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&']
"set completeopt = longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

""""""""""NERDTree""""""""""""
" automatically open NERDTree
autocmd vimenter * NERDTree
" shortkey pour toggle NERDTree
map <F5> :NERDTreeToggle<CR>

"""""""""" air-line """""""""
set laststatus=2
" pour les couleurs dans airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
""" swtich tab
nnoremap <Tab> :bNext<CR>
" url: http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

""""TagBar"""""
nmap <F8> :TagbarToggle<CR>

"""""undotree""""
nnoremap <F6> :UndotreeToggle<cr>
""" Persistent undo
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

"""""
let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

""""show-invisibles""""
""" url: http://vimcasts.org/episodes/show-invisibles/
" Shortcut to rapidly toggle `set list`
set list
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
